
// Version 12/03/2024 


cd C:\FFKM;

clear

// load data

NomeE = uigetfile("*.txt", pwd(), "Input Data:");
dados=fscanfMat(NomeE);

nomes=['Number of sets:'] 
valor_ini=['2'];

resultados=x_mdialog('Input Data:',nomes,valor_ini);

if resultados==[] then 
    messagebox('Run the software again');
    
   end

Voc1=evstr(resultados(1));




// Functions

tic();

exec('C:\FFKM\centrost.sci');

exec('C:\FFKM\printxb.sci');

exec('C:\FFKM\printcenters.sci');
exec('C:\FFKM\mean.sci');


exec('C:\FFKM\angulos.sci');


exec('C:\FFKM\myfunc.sci');

exec('C:\FFKM\dist.sci');



exec('C:\FFKM\funczero.sci');

exec('C:\FFKM\count.sci');


exec('C:\FFKM\fplot.sci');
exec('C:\FFKM\plote.sci');
exec('C:\FFKM\clus.sci');





//Variables

l=1000; 
lwhi=2;
rui=1;
m=2;
XBI=[];
XBIt=[];
ti=1;

//CentersFt=[];
grupost=[];
clustersF=[];
Grupos=[];
Centros=[];
centroth=[];

[nl, nc]=size(dados);

 matriz=myfunc(dados);
 dadosplot=ones(nl,1);
 dadosplot=cat(2,dados,dadosplot);
 
     
// Fuzzy K-means method

     while lwhi<=Voc1;
         
                  
       exec('C:\FFKM\aleatorio.sce');
       exec('C:\FFKM\heuristica32.sce');
       exec('C:\FFKM\heuristica1.sce');
       
        // End Fuzzy K-Means
       
       // exploring the results
       
           if ti==2 then
                
                               
                         XBIt=[XBIt,XB];
                             grupost=[grupost,grupos]; 
                                centroth=[centroth,centro];
                
                
                                     xbmin=XBIt(1);
                
                                     
                         if XBIt(2)<= xbmin then
                        
                              xbmin=XBIt(2);
                        
                                 mt=2;
                                 
                                 grup=grupost(:,mt);
                                 
                                        centrotF=centroth(:,[3:4]);
                        
                              else
                        
                                  mt=1;
                                  
                                  grup=grupost(:,mt);
                                  
                                  
                                  
                                                                   
                                           centrotF=centroth(:,[1:2]);
                                           
                            
                                      
                            end
                 
                     
                XBI=[XBI,xbmin];// Xie Beni Index
                                
                Grupos=[Grupos,grup];
                
              
                              
                CentersF=meant(centrotF); // put the data in Dip /direction
                
                
                 impresscenter(lwhi); // print the cluster centers
                                                    
                         disp(CentersF);
                         
                         count(grup); //count the number of discontinuity in each cluster
                       
                XBIt=[];
                
               grupost=[];
               
               centroth=[];
               
               lwhi=lwhi+1;
                        ti=1;
                        
                        
                                       
                       
                             
            else
                
                ti=ti+1;
                lwhi=lwhi+0;
                
                XBIt=[XBIt,XB];
                
                grupost=[grupost,grupos];
                
              centroth=[centroth,centro];
                
                              
            end // if 
   
    
  end //while
   

 
time=toc();



//stereographic projection 
 
 clus(dadosplot,1);
  
 [nlr, ncr]=size(Grupos);
 
  
  
 for i=1:ncr
   scf(max(winsid())+1);
     
     Sets=cat(2,dados(:,[1:2]),Grupos(:,i));
     
     kit=i+1;         
   clus(Sets,kit);
      
            
 end


// export the results csv

results=cat(2,dados(:,[1:2]),Grupos);

llll=impress(XBI);// print Xie beni index

csvWrite(results, 'C:\FFKM\Results\results.csv', ',');


 messagebox('End of execution:');



