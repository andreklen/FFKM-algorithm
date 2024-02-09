
// calcula os cossenos diretores
function a=myfunc(dadosbeta)
    
    [nl, nc]=size(dadosbeta); // nl e nc, número de linhas e colunas da matriz de dados originais.

   for i=1:nl;
    x(i)=sind(dadosbeta(i,1))*sind(dadosbeta(i,2));
    y(i)=sind(dadosbeta(i,1))*cosd(dadosbeta(i,2));
    z(i)=cosd(dadosbeta(i,1));
       
       end
      a=cat(2,x,y,z);  
      
      
 endfunction
