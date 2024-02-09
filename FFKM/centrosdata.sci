// calcula a médias de todos os dados
function AS=centrosdata(centbeta)// recebem respectivamenete a matriz de cossenos diretores originais 
Si=[];

Sss=[];// recebe os centros dos agrupamentos
 Xs=0;
 
    
    [nl,nc]=size(centbeta);
    
    
   // Si=[nc*nc,nc*nc];
     
      
       for p=1:nc;
    
          for t=1:nc;
    
                for i=1:nl;
        
        Xs= Xs+(centbeta(i,p)*centbeta(i,t));
        
               
                end
              Si(p,t)=Xs; 
              
              Xs=0;       
           
           end  
    
       end   
        [R diagevals]=spec(Si);
        
        //Sss(j,: )=R(:,nc)';
                
    
      AS=R(:,nc)'
    
     // AS=Sss;

      
endfunction
