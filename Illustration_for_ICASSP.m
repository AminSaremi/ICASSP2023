clear all,
close all,

audiogram_Magnus_Backstrom_R=[0,0,0,-6,-10,-10,-18,-25,-40,-60,-45]; % participant#1 (updated)
audiogram_Stefan_P=[-10 -10, -25,-25,-30,-30,-40,-50,-65,-60,-55]; % participant#2
audiogram_Niklas_t=[-10,-10,-12,-15,-15,-25,-25,-35,-45,-50,-45]; % participant#3
audiogram_Tommy_K=[-5,-5,-5,-5,-5,-15,-15,-35,-45,-60,-50]; % participant#4 (updated)
audiogram_Lars_D=[-12,-12,-12,-20,-25,-40,-50,-65,-70,-45,-40]; % participant#5
audiogram_Jonas_O=[-10,-10,-10,-10,-10,-12,-32,-45,-60,-40,-22]; % participant#6 (updated)
audiogram_Anders_S=[-2,-5,-5,-5,-15,-15,-15,-40,-45,-40,-30]; % participant#7
audiograms_bank=[audiogram_Magnus_Backstrom_R; audiogram_Stefan_P; audiogram_Niklas_t; audiogram_Tommy_K;audiogram_Lars_D; audiogram_Jonas_O; audiogram_Anders_S];

load('Diagnosed_OHC_for_mean_audiogram_MSE=2_19.mat');
%%
figure,
subplot(1,2,1)
load('Diagnosed_OHC_for_Magnus_Backstrom_MSE=45_5.mat');
plot([1:100]./100,OHC_integrity,'ok')
hold on, plot([1:100]./100,initial_guess,'color',[0.7,0.7,0.7])
hold on, plot([1:100]./100,OHC_integrity,'k')
xlabel('coclear location [0=base, 1=apex]');
ylabel ('OHC integrity [0=dead, 1=healthy]');
legend ('Model prediction','initial guess'); 
title('Detected OHC pattern for subject #1');

subplot(1,2,2)
semilogx(fre,inp_audiogram,'hk','LineWidth',2), hold on;
semilogx(Bf_healthy,amp_loss+inp_audiogram(1),'k','color',[0.6,0.6,0.6],'Linewidth',2)
axis([125 8000 -70 0])
title('The auudiogram of subject #1');
xlabel('Frequency [Hz]');
ylabel('Hearing thresholds [dB]');
legend('Measured thresholds','Model prediction');

%%
figure,
subplot(1,2,1)
load('Diagnosed_OHC_for_Stefan_P_MSE=25.mat');
plot([1:100]./100,OHC_integrity,'ok')
hold on, plot([1:100]./100,initial_guess,'color',[0.7,0.7,0.7])
hold on, plot([1:100]./100,OHC_integrity,'k')
xlabel('coclear location [0=base, 1=apex]');
ylabel ('OHC integrity [0=dead, 1=healthy]');
legend ('Model prediction','initial guess'); 
title('Detected OHC pattern for subject #2');

subplot(1,2,2)
semilogx(fre,inp_audiogram,'hk','LineWidth',2), hold on;
semilogx(Bf_healthy,amp_loss+inp_audiogram(1),'k','color',[0.6,0.6,0.6],'Linewidth',2)
axis([125 8000 -70 0])
title('The auudiogram of subject #2');
xlabel('Frequency [Hz]');
ylabel('Hearing thresholds [dB]');
legend('Measured thresholds','Model prediction');
%%
figure,
subplot(1,2,1)
load('Diagnosed_OHC_for_Niklas_t_MSE=3_3.mat');
plot([1:100]./100,OHC_integrity,'ok')
hold on, plot([1:100]./100,initial_guess,'color',[0.7,0.7,0.7])
hold on, plot([1:100]./100,OHC_integrity,'k')
xlabel('coclear location [0=base, 1=apex]');
ylabel ('OHC integrity [0=dead, 1=healthy]');
legend ('Model prediction','initial guess'); 
title('Detected OHC pattern for subject #3');

subplot(1,2,2)
semilogx(fre,inp_audiogram,'hk','LineWidth',2), hold on;
semilogx(Bf_healthy,amp_loss+inp_audiogram(1),'k','color',[0.6,0.6,0.6],'Linewidth',2)
axis([125 8000 -70 0])
title('The auudiogram of subject #3');
xlabel('Frequency [Hz]');
ylabel('Hearing thresholds [dB]');
legend('Measured thresholds','Model prediction');
%%
figure,
subplot(1,2,1)
load('Diagnosed_OHC_for__Tommy_K_MSE=41_6.mat');
plot([1:100]./100,OHC_integrity,'ok')
hold on, plot([1:100]./100,initial_guess,'color',[0.7,0.7,0.7])
hold on, plot([1:100]./100,OHC_integrity,'k')
xlabel('coclear location [0=base, 1=apex]');
ylabel ('OHC integrity [0=dead, 1=healthy]');
legend ('Model prediction','initial guess'); 
title('Detected OHC pattern for subject #4');

subplot(1,2,2)
semilogx(fre,inp_audiogram,'hk','LineWidth',2), hold on;
semilogx(Bf_healthy,amp_loss+inp_audiogram(1),'k','color',[0.6,0.6,0.6],'Linewidth',2)
axis([125 8000 -70 0])
title('The auudiogram of subject #4');
xlabel('Frequency [Hz]');
ylabel('Hearing thresholds [dB]');
legend('Measured thresholds','Model prediction');

%%
figure,
subplot(1,2,1)
load('Diagnosed_OHC_for__Lars_D_MSE=28_6.mat');
plot([1:100]./100,OHC_integrity,'ok')
hold on, plot([1:100]./100,initial_guess,'color',[0.7,0.7,0.7])
hold on, plot([1:100]./100,OHC_integrity,'k')
xlabel('coclear location [0=base, 1=apex]');
ylabel ('OHC integrity [0=dead, 1=healthy]');
legend ('Model prediction','initial guess'); 
title('Detected OHC pattern for subject #5');

subplot(1,2,2)
semilogx(fre,inp_audiogram,'hk','LineWidth',2), hold on;
semilogx(Bf_healthy,amp_loss+inp_audiogram(1),'k','color',[0.6,0.6,0.6],'Linewidth',2)
axis([125 8000 -70 0])
title('The auudiogram of subject #5');
xlabel('Frequency [Hz]');
ylabel('Hearing thresholds [dB]');
legend('Measured thresholds','Model prediction');

%%
figure,
subplot(1,2,1)
load('Diagnosed_OHC_for__Jonas_O_MSE=29_4.mat');
plot([1:100]./100,OHC_integrity,'ok')
hold on, plot([1:100]./100,initial_guess,'color',[0.7,0.7,0.7])
hold on, plot([1:100]./100,OHC_integrity,'k')
xlabel('coclear location [0=base, 1=apex]');
ylabel ('OHC integrity [0=dead, 1=healthy]');
legend ('Model prediction','initial guess'); 
title('Detected OHC pattern for subject #6');

subplot(1,2,2)
semilogx(fre,inp_audiogram,'hk','LineWidth',2), hold on;
semilogx(Bf_healthy,amp_loss+inp_audiogram(1),'k','color',[0.6,0.6,0.6],'Linewidth',2)
axis([125 8000 -70 0])
title('The auudiogram of subject #6');
xlabel('Frequency [Hz]');
ylabel('Hearing thresholds [dB]');
legend('Measured thresholds','Model prediction');
%%
figure,
subplot(1,2,1)
load('Diagnosed_OHC_for__Anders_S_MSE=12_1.mat');
plot([1:100]./100,OHC_integrity,'ok')
hold on, plot([1:100]./100,initial_guess,'color',[0.7,0.7,0.7])
hold on, plot([1:100]./100,OHC_integrity,'k')
xlabel('coclear location [0=base, 1=apex]');
ylabel ('OHC integrity [0=dead, 1=healthy]');
legend ('Model prediction','initial guess'); 
title('Detected OHC pattern for subject #7');

subplot(1,2,2)
semilogx(fre,inp_audiogram,'hk','LineWidth',2), hold on;
semilogx(Bf_healthy,amp_loss+inp_audiogram(1),'k','color',[0.6,0.6,0.6],'Linewidth',2)
axis([125 8000 -70 0])
title('The auudiogram of subject #7');
xlabel('Frequency [Hz]');
ylabel('Hearing thresholds [dB]');
legend('Measured thresholds','Model prediction');

%% Fig.4 of Saremi et al.m (2023)
load('Diagnosed_OHC_for_mean_audiogram_MSE=2_19.mat');
figure,
subplot(1,2,1)
initial_guess=zeros(1,100);
initial_guess(71:100)=1;
initial_guess(1:15)=0;
initial_guess(16:70)=0.5;
plot([1:100]./100,OHC_integrity,'ok')
hold on, plot([1:100]./100,initial_guess,'color',[0.7,0.7,0.7])
hold on, plot([1:100]./100,OHC_integrity,'k')
xlabel('coclear location [0=base, 1=apex]');
ylabel ('OHC integrity [0=dead, 1=healthy]');
legend ('Model prediction','initial guess'); 
title('Detected OHC pattern for the average case');

subplot(1,2,2)
M=mean(audiograms_bank);
SD=std(audiograms_bank);
errorbar(fre,M,SD/2,'hk');
set(gca,'xscale','log'); hold on,
%semilogx(fre,inp_audiogram,'ok','LineWidth',1.5);

hold on, semilogx(Bf_healthy,amp_loss+inp_audiogram(1),'k', 'color',[0.6,0.6,0.6],'Linewidth',2)
%hold on, semilogx(fre,inp_audiogram,'--k')
axis([125 8000 -60 0])
title('Average audiogram');
xlabel('Frequency [Hz]');
ylabel('Hearing thresholds [dB]');
legend('Measured thresholds','Model prediction');