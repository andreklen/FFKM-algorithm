
// cluster validity 

// XB

// numerator.
// calculo da FO
FO=0;
FOu=0;

[nxb,ncxb]=size(ufuzzy);

for j=1:ncxb
    
    for i=1:nxb
        
        FO= FO + ufuzzy(i,j)*distanciacentroide(i,j);
end
     end


 
 dminxb=dist(Scentroidel,Scentroidel);
 
 [n,c]=size(dminxb);
 
 for j=1:c
     
     for i=1:n
         
         if i==j
             
             dminxb(i,j)=10000;
         end
        end
 end
  
  dminxb=min(dminxb);
  
  
 
  


// XB indices

XB=FO/(nxb*dminxb);



//XB=[medidas,XB1];




 


  
  
