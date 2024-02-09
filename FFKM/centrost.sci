// calcula a a médias dos agrupamentos.
function S=centrost(centbeta,ubeta)// recebem respectivamenete a matriz de cossenos diretores originais e a matriz u
Si=[];

Sss=[];// recebe os centros dos agrupamentos
 Xs=0;
 
    
    [nl,nc]=size(centbeta);
    [nlu,ncu]=size(ubeta);
    
   // Si=[nc*nc,nc*nc];
    
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
