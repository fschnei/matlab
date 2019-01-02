%%
clc;clear;

H = tf([2 4],[1 20 124 240 ]);

num = [1 4];
den = [1 20 5];
G = idtf(num,den);

figure(1); clf;
[R, K, R_, K_] = PlotRootLocus(H);
figure(2); clf;
[R, K, R_, K_] = PlotRootLocus_2(H);
axis([-35 15, -20 20]);

