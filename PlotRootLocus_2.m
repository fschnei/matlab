function [R, K, R_, K_] = PlotRootLocus_2(SysOffenerKreis)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


% save holdstate to restore later
holdon = ishold;

%clf;
hold on;

% get data
[R, K] = rlocus(SysOffenerKreis);
for m = 1:numel(R)/length(R)
    % plot every pole - "path"
    handler_pos(m) = plot(real(R(m, :)), imag(R(m, :)), 'Color', 'r', 'DisplayName', "k>0");
end
[R_, K_] = rlocus(-SysOffenerKreis);
for m = 1:numel(R_)/length(R_)
    handler_neg(m) = plot(real(R_(m, :)), imag(R_(m, :)), 'Color', 'b', 'DisplayName', "k<0");
end

%Poles = pole(SysOffenerKreis);
[Zeros, Poles, k] = zpkdata(SysOffenerKreis);

% plot X for poles
%plot_handler(1) = plot(Poles, 'x', 'Color', 'g');
plot_handler_poles = plot(real(Poles{1,1}), imag(Poles{1,1}), 'x', 'DisplayName', "Poles", 'Color', "black");
plot_handler_roots = plot(real(Zeros{1,1}), imag(Zeros{1,1}), 'o', 'DisplayName', "Roots", 'Color', "black");


grid on;
%axis([-35 15, -20 20]);

%title('Root Locus');
title(horzcat('Root Locus', evalc('SysOffenerKreis')));    % naja das geht vlt noch schoener
xlabel('Real \sigma');
ylabel('Imag j\omega');

lgd = legend([handler_pos(1), handler_neg(1), plot_handler_poles, plot_handler_roots]);



%stepplot(H);
% syms s
% Z = 2 * (s+2);
% N = (s+10) * (s+4) * (s+6);
% Z_coeff = coeffs(Z);
% N_coeff = coeffs(N);
%zpk

if ~holdon
    hold off;
end

end

