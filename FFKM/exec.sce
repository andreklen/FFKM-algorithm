
// macOS version 20/02/2025 


cd C:\FFKM

clear

// load data

NomeE = uigetfile("*.txt", pwd(), "Input Data File:");

dados=fscanfMat(NomeE);

nomes=['Maximum number of sets:'] 
valor_ini=['2'];

resultados=x_mdialog('Input:',nomes,valor_ini);

if resultados==[] then 
    messagebox('Run the software again');
    
   end

Voc1=evstr(resultados(1));




// Functions

tic();

exec('C:\FFKM\centrost.sci');

exec('C:\FFKM\values.sci');

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

//dados=dados(:, 1:$-1);  // Exclude the last column



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
                 
            // Loop through each row of CentersF and display the results with integer values rounded up
for i = 1:size(CentersF, 1)
    // Round the values up to the nearest integer
    Dip = ceil(CentersF(i, 1));       // Round up Dip
    Direction = ceil(CentersF(i, 2)); // Round up Direction

    // Display the result with the integer values
    disp("Set " + string(i) + ": Dip = " + string(Dip) + ", Direction = " + string(Direction));
end
                        
                      // disp(string(CentersF));
                         
                         count(grup); //count the number of discontinuity in each cluster
                         
                         results1=cat(2,dados(:,[1:2]),grup);
                         
                         disp("Minimum and maximum values");
                         
                         values(results1);
                       
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

Kbest = min(XBI(:)); // Find the minimum value in the matrix XBI
;


//Find the minimum value and its index in the matrix XBI
[Kbest, idx] = min(XBI(:));

ka=idx+1;


// Print the result
disp("The optimal number of sets is: " + string(ka));


disp("The minimum value of XB is: " + string(Kbest) );

csvWrite(results, 'C:\FFKM\results.csv', ',');

disp("The data was successfully exported to a CSV file located in the Results folder.");

 messagebox('End of execution:');



