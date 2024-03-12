

function b=angulos(ang)
    
    [nl,nc]=size(ang);
    
    r=ang;
for i=1:nl; 
    
    if r(i,1)>=0 then;
        if r(i,2)<=0 then
            q=180;
            
        else
            q=0;
        end
        
       else
           if r(i,2)<=0 then
               q=180;
           else 
               q=360 ;
        
       end
   end
   
   dip(i,1)=acosd(r(i,3)); // dip
  
   direct(i,1)=atand((r(i,1)/r(i,2)))+ q;// direction
   
 end
 


centroorigem=([dip,direct]);
 
b=centroorigem; 
    
endfunction
