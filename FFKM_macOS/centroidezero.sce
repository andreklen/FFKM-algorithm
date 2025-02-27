


for i=1:nlzero;
                    
                    for j=1:nczero;

                        
                           
                        if min(distanciacentroide(i,1:nczero))== distanciacentroide(i,j) then
                            
                            distanciacentroide(i,j)=0.01;
                            
                                                        
                           
                        end
                            
                           
                    end
end
