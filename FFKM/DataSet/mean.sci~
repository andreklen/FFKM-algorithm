
// put the mean orientation into format dip/directio


function M=mean(x)
    
    [nl,nc]=size(x)
    
  C=x;  
    for i=1:nl
        
         if x(i,1)>90 then
            
            C(i,1)=180-x(i,1);
                
                if x(i,2)>180;
                    
                    C(i,2)=x(i,2)-180; 
                    
                        else 
            
                         C(i,2)=180+x(i,2);
            
                end
            
                           
            end
            
            
    
    end
  
  M=C;    
   
   endfunction
