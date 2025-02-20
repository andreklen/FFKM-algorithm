// evita divisão por zero.

function Z=funczero(distzero)

[nlzero,nczero]=size(distzero);

for i=1:nlzero;
                    
                    for j=1:nczero;

                        if distzero(i,j)==0 then
                                                  
                            
                            distzero(i,j)=0.0001;
                            
                         end                               
                           
                   end
                            
                           
 end
Z=distzero;

endfunction
