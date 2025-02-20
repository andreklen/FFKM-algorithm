// computaion of cluster centers
function S=centrost(centbeta,ubeta)// cetbeta: unit normal vectors matrix; ubeta fuzzy matrix
    
    
Si=[];

Sss=[];// 
 Xs=0;
 
    
    [nl,nc]=size(centbeta);
    [nlu,ncu]=size(ubeta);
    
      
  for j=1:ncu
      
       for p=1:nc;
    
          for t=1:nc;
    
                for i=1:nl;
        
        Xs= Xs+(ubeta(i,j)^m)*(centbeta(i,p)*centbeta(i,t));
        
               
                end
              Si(p,t)=Xs; 
              
              Xs=0;       
           
           end  
    
       end   
        [R diagevals]=spec(Si);
        
        Sss(j,: )=R(:,nc)';
                
    end
      
    
      S=Sss;

      
endfunction
