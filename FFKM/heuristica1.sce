// Fuzzy K-means.

dtt=distanciacentroide;
distanciacentroide=dtt;

[nldisd, ncdisd]=size(distanciacentroide);

Up=zeros(nldisd,ncdisd);


t=0;

while t<l;
u=zeros(nldisd,ncdisd);
 erros=0.001; 

  
    for i=1:nldisd;
        
         soma=0;
        
        for j=1:ncdisd;

              soma=soma+(1/distanciacentroide(i,j))^(1/(m-1));
              
            end
           
       
        
        total(i)=soma;
        end
        
    
    
     
    
    for i=1:nldisd;
    
        for j=1:ncdisd;
 
            ufuzzy(i,j)=(1/distanciacentroide(i,j))^(1/(m-1))/(total(i));   // fuzzy completa

    
    end
    
end

   u=ufuzzy;


         Scentroidel=centrost(matriz,ufuzzy);

 
        distanciacentroide2=dist(matriz,Scentroidel);

                distanciacentroide=funczero(distanciacentroide2);
  
  
                 Scentroide=Scentroidel;
  
                     [nlc,ncc]=size(Scentroide);
  
                        for i=1:nlc;
    
       
                            centrof(i,1)=100;
                                    end
 
        centro=angulos(Scentroidel); // final cluster centers
        centroidef=cat(2,centro,centrof);

    Centros=([Centros;centro]); // All cluster centers

   erromax=max(abs(Up-u));
   

      
  if erromax < erros then  break
      
else Up=u;
 end

erromax;

end 







for i=1:nldisd;
                    
                    for j=1:ncdisd;

                        
                            if max(u(i,1:ncdisd))== 0 then
                                grupos(i)=0;
                            else
                                                    
                        if max(u(i,1:ncdisd)) == u(i,j) then
                            
                            grupos(i)=j;
                            
                                                        
                           end
                        end
                            
                           
                    end
    
    
end


// Xie Beni calculation
 exec('C:\FFKM\medidas.sce'); 

 



