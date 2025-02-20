

// function to calculate the distance 

function d=dist(dd,cc)
    [nl,nc]=size(dd)
    [nla,nca]=size(cc)
        
    for j=1:nla
           
           for i=1:nl
               
                            
               a=dd(i,1:nc);
               
               b=cc(j,1:nc);
               
              c(i,j)=1- (a*b')^2;
           end
       end
       
       for i=1:nla
           for j=1:nla
               
               if c(i,j)<0.0001 then
                   c(i,j)=0;
                   end
               
       end
        end
d=c;

     
endfunction
