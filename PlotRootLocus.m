function [R, K, R_, K_] = PlotRootLocus(SysOffenerKreis)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


% save holdstate to restore later
holdon = ishold;

%clf;
hold on;

%H = SysOffenerKreis;
% get data
[R, K] = rlocus(SysOffenerKreis);
[R_, K_] = rlocus(-SysOffenerKreis);

opt1 = rlocusplot(SysOffenerKreis, 'r');%, 'DisplayName', "k>0");
opt2 = rlocusplot(-SysOffenerKreis, 'b');
legend({'k>0','k<0'});
%opt1_ = getoptions(opt1)
%grid on;
%axis([-35 15, -20 20])




%plot(r(1,:))
%zpk

% figure(2); clf;
% hold on
% 
% [R, K] = rlocus(SysOffenerKreis);
% plot(R(1, :), 'Color', 'r');
% plot(R(2, :), 'Color', 'r');
% plot(R(3, :), 'Color', 'r');



% for m = 1:numel(R)/length(R)
%     handler_pos(m) = plot(R(m, :), 'Color', 'r', 'DisplayName', "k>0");
% end
% [R, K] = rlocus(-H);
% for m = 1:numel(R)/length(R)
%     handler_neg(m) = plot(R(m, :), 'Color', 'b', 'DisplayName', "k<0");
% end
% 
% grid on;
% axis([-35 15, -20 20])
% legend([handler_pos(1), handler_neg(1)]);
% hold off



%stepplot(H);
% syms s
% Z = 2 * (s+2);
% N = (s+10) * (s+4) * (s+6);
% Z_coeff = coeffs(Z);
% N_coeff = coeffs(N);


if ~holdon
    hold off;
end

end

