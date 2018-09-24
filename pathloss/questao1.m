%Modelo de Espaco Livre


##frequencia usada na tecnologia 4G
f = 700*10^6;
##comprimento de onda
lmbd = 3*10^8/f;
##indice para laco
ind1 = 1;
##eixo x para plot de grafico
dist_x=10:10:1000;

##laco para calcular o modelo de espaco livre
for distancia = 10:10:1000;
  espliv (ind1) = -10*log10((lmbd^2)/((4*pi*distancia)^2))^-1;
  ind1++;
endfor

##plote grafico
plot(dist_x,espliv);
title("Modelo de Espaco Livre", 'fontsize', 16);
ylabel("Perda [dB]",'fontsize', 13);
xlabel("Distancia [metros]",'fontsize', 13);
grid;


