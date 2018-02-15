clearvars
clc
close all
N = 5*10^3
r = 0.48
Pop = [N]
tijd = linspace(1,1000,1000)
i = linspace(1,1000,1000)
for i = 2:1000
        Pop(i) = Pop(i-1)*(1+r);
  
end
Popan = linspace(1,1000,1000)
Popan(1) = N
Popan(1,2:1000) = Pop(1)*exp(r*tijd(1,1:999))
figure
plot(tijd,Pop)
hold on
plot(tijd,Popan)
%%
subplot(2,2,1), plot(tijd,Popan,'y')
subplot(2,2,2), plot(tijd,Pop,'y')
% hieronder link voor alle klueren dashed lines etc onderaan pagina: https://nl.mathworks.com/help/matlab/ref/plot.html
%%
% mesh
clearvars
clc
close all
X=linspace(1,5,5)
Y=linspace(1,10,10)
Y=Y'
[V  W] =meshgrid(X,Y)
H=V+W
mesh(X,Y,H)
N = 5*10^3
r = 0.48
Pop = [N]
tijd = linspace(1,15,15)
r = linspace(0.1,0.5,5)
[time rate] = meshgrid(tijd,r)
Populatie = time.*rate+log(N)
mesh(time,rate,Populatie)
xlabel('tijd (1-15 jaren)')
ylabel('groeisnelheid')
zlabel('Populatie')
title('Variatie populatie met tijd en groeisnelheid')




