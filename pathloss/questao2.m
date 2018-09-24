%Modelo Log Simplificado

##coeficiente de perda de percurso
n=[2:0.5:4];
f = 700*10^6;
lmbd = 3*10^8/f;
##eixo x para plote grafico
dist_x = 10:10:1000;
##d0 = 10 metros
d_0 = 10;
##valor de pd_0 obtido atraves da formula de espaco livre em 10 metros
pd_0 = -10*log10((lmbd^2)/((4*pi*10)^2))^-1;

##funco para calcular o modelo log simplificado, inserindo coeficiente de perda 
##de percurso, o PL(d0) e d0
function l=logsimp(n,pld_0,d_0)
  ind2=1;
  for distancia = 10:10:1000
     l(ind2) = pld_0 - 10*n*log10(distancia/d_0);
     ind2++;
  endfor
endfunction

##matriz criada para atribuir o log simplificado com diferentes coeficientes
logsimplificado=[ logsimp(n(1),pd_0,d_0);
                  logsimp(n(2),pd_0,d_0);
                  logsimp(n(3),pd_0,d_0);
                  logsimp(n(4),pd_0,d_0);
                  logsimp(n(5),pd_0,d_0)];

##plote grafico da matriz
plot(dist_x, logsimplificado);
title("Modelo de Log Simplificado", 'fontsize', 16);
ylabel("Perda [dB]",'fontsize', 13);
xlabel("Distancia [metros]", 'fontsize', 13);
legend('n=2','n=2.5','n=3','n=3.5','n=4','location','southwest','orientation',
        'horizontal');
grid;

##e possivel plotar graficos de cada linha da matriz

##plot(dist_x,logsimplificado(1,:),'b');
##title(sprintf("Modelo de Log Simplificado - Coeficiente de perda = %d", n(1)),
##'fontsize', 16);
##ylabel("Perda [dB]", 'fontsize', 13);
##xlabel("Distancia [metros]", 'fontsize', 13);
##grid;
##figure();
##
##plot(dist_x,logsimplificado(2,:),'r');
##title(sprintf("Modelo de Log Simplificado - Coeficiente de perda de %d", 
##n(2)), 'fontsize', 16);
##ylabel("Perda [dB]", 'fontsize', 13);
##xlabel("Distancia [metros]", 'fontsize', 13);
##grid;
##figure();
##
##plot(dist_x,logsimplificado(3,:),'y');
##title(sprintf("Modelo de Log Simplificado - Coeficiente de perda de %d", 
##n(3)), 'fontsize', 16);
##ylabel("Perda [dB]", 'fontsize', 13);
##xlabel("Distancia [metros]", 'fontsize', 13);
##grid;
##figure();
##
##plot(dist_x,logsimplificado(4,:),'--m');
##title(sprintf("Modelo de Log Simplificado - Coeficiente de perda de %d", 
##n(4)), 'fontsize', 16);
##ylabel("Perda [dB]", 'fontsize', 13);
##xlabel("Distancia [metros]", 'fontsize', 13);
##grid;
##figure();
##
##plot(dist_x,logsimplificado(5,:),'g');
##title(sprintf("Modelo de Log Simplificado - Coeficiente de perda de %d", 
##n(5)), 'fontsize', 16);
##ylabel("Perda [dB]", 'fontsize', 13);
##xlabel("Distancia [metros]", 'fontsize', 13);
##grid;