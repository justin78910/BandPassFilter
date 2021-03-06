%% Read audio file
clc;clear;
file = 'voice2.m4a';
[d,fs] = audioread(file);%read m4a audio file
d=d(:,1);
d = d';
n = 0:length(d)-1;
f = fs/30;
W = floor(2*pi*f)+1;
w = linspace(-pi,pi,W);
DATA = dtft(d,n,w);
%% Play Original Sound
[dd ffs] = audioread('voice2.m4a');
originalSound = audioplayer(dd,ffs);
originalSound.play
%% Filter and Play Sound
%figure
%plot(w/pi,DATA);
%[b a] = butter(6,[0.005 .1]);
[b a] = butter(4,[0.001 .035]);
F = filter(b,a,d);

%plot(F);
filteredSound = audioplayer(F, fs);
filteredSound.play
