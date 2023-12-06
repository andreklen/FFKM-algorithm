// calcula os centros inciais

centroi=angulos(rF(:,[1:3]));

//t1=0;// contador do while

//k=1000; //limite do contador

//dminh21=0; 


//fof=0;

[nla, nca]=size(centroi);

matriza=myfunc(centroi);// calcula os cossenos diretores dos centros iniciais


 // calculo da distância de cada amostra ao centroide
 

distanciacentroide1=dist(matriz,rF);// matriz de distâncias 

distanciacentroide=funczero(distanciacentroide1);// matriz de  distâncias que evita divisão por zero.




