
// Version 27/09 





cd C:\FFKM\DataSet;

clear

// load data

NomeE = uigetfile("*.txt", pwd(), "Data Input:");
dados=fscanfMat(NomeE);

nomes=['Number of sets:'] 
valor_ini=['2'];

resultados=x_mdialog('Data Input:',nomes,valor_ini);

if resultados==[] then 
    messagebox('Execute again the software');
    
   end

Voc1=evstr(resultados(1));




// Functions

tic();


exec('C:\FFKM\centrost.sci');

exec('C:\FFKM\mean.sci');


exec('C:\FFKM\angulos.sci');

exec('C:\FFKM\myfunc.sci');

exec('C:\FFKM\dist.sci');



exec('C:\FFKM\funczero.sci');


exec('C:\FFKM\fplot.sci');
exec('C:\FFKM\plote.sci');
exec('C:\FFKM\clus.sci');





//Variables
erros=0.001; 

t=0;

l=100; 
lwhi=2;
rui=1;
m=2;
XBI=[];

clustersF=[];
Grupos=[];
Centros=[];



[nl, nc]=size(dados);

 matriz=myfunc(dados);
 dadosplot=ones(nl,1);
 dadosplot=cat(2,dados,dadosplot);
 
     
// Fuzzy K-means method



 while lwhi<=Voc1;
 
     clear rF Scentroidel Scentroide erromax erro Up distanciacentroide ufuzzy distanciacentroide u distanciacentroide2 distanciacentroide1
       
       exec('C:\FFKM\aleatorio.sce');
       exec('C:\FFKM\heuristica32.sce');
       exec('C:\FFKM\heuristica1.sce');
        
     
         
      
   // End Fuzzy K-Means
   
  CentersF=meant(centro);
  
  MO=list('Mean orientatios: Dip/Direction for K= 2','Mean orientatios: Dip/Direction for K= 3','Mean orientatios: Dip/Direction for K= 4','Mean orientatios: Dip/Direction for K= 5','Mean orientatios: Dip/Direction for K= 5','Mean orientatios: Dip/Direction for K= 6','Mean orientatios: Dip/Direction for K= 7','Mean orientatios: Dip/Direction for K= 8');  

disp(MO(lwhi-1))

disp(CentersF)
        
  lwhi=lwhi+1;
  
  
  XBI=[XBI,XB]; // Xie-Beni index
  
  
  
  

    
end

time=toc();

results=cat(2,dados(:,[1:2]),Grupos);

// stereographic projection 
 
 clus(dadosplot);
  
 [nlr, ncr]=size(Grupos);
 
 // insertion of the mean orientation value =100
 
  
  
 for i=1:ncr
     scf(max(winsid())+1);
     
     Sets=cat(2,dados(:,[1:2]),Grupos(:,i));
     
              
     clus(Sets);
      
      
      
 end
 
 
 
 // print results
 
 XBS=list('Xie-Beni for K = 2','Xie-Beni for K = 3','Xie-Beni for K = 4','Xie-Beni for K = 5', 'Xie-Beni for K = 6','Xie-Beni for K = 7','Xie-Beni for K = 8');
 
 for i=2:Voc1;

 
disp(XBS(i-1))

disp(XBI(i-1))


end

// export the results csv
csvWrite(results, 'C:\FFKM\Results\results.csv', ',');


            
messagebox('End of execution:');



