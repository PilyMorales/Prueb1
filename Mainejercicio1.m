%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Implementación Regresión Lineal con Gradiente                         %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%   Datos a utilizar  %%%%%%%%%%%%%%%%%%%%%%%%%%%
data = load('datos.txt');

y = data(:,2);                                                             
x = data(:,1);                                                              
m = length(y);                                                             


figure,plot(x,y,'*'),title('x vs. y')
beta = zeros(2,1);                                                         
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

%%
%%%%%%%%%%%%%%%%%%%%%%   Organizando Variable X  %%%%%%%%%%%%%%%%%%%%%%%%%%
X = [ones(m, 1), data(:,1)];                                               

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

%%
%%%%%%%%%%%%%%%%%%%%%%   Calculo gradiente  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Num_Ite = 1500;                                                            
alpha = 0.01;

[beta,J_history,beta_history] = calcGradient(beta,alpha,m,X,y,Num_Ite);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

figure,plot(J_history,'r'),title('J_history'),
figure,plot(beta_history(:,1),'r'),title('beta_history(:,1)'),
figure,plot(beta_history(:,2),'r'),title('beta_history(:,2)'),

h_beta = hipotesis(X,beta);
figure,plot(x,y,'*r'),title('x vs. y'),
hold on
plot(x,h_beta,'*'),title('x vs. h_beta'),




