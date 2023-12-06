// Initializatiion method - Fisher distribution
tra=0;
dminF=0;
rF=[];
                while tra<=1000;


wc=lwhi;

Up=zeros(nl,wc);
u=zeros(nl,wc);

kappa=0.01;

n=wc;

c= 2/kappa*(sinh(kappa));// normalização da constante
y = rand(n,1);

W = (1/kappa) * log( exp(-kappa) + kappa * c * y );


v = 2*%pi*rand(n,1);




v = [cos(v) sin(v)];
r = [repmat(sqrt(1-W.^2),1,2).*v W];

// somente o hemisferio superior

for i=1:wc
    
    if r(i,3)<0 then
        r(i,1:3)=-1*(r(i,1:3));
    end
    
    
end

[ nld, ncd]=size(matriz);
[ nldd, ncdd]=size(dados);


//if ncdd <> 2 then 

//Pr=aleat(n,matriz(:,[4:nc]));
//r=cat(2,r,Pr',Pr');// teste de inicialização.


//Pr=aleat(matriz(:,[4:ncd]),n);

//r=cat(2,r,Pr);
//end

// calculo da menor distancia entre os centroides
       
 centroidetra=r';
      
      
   [nlc ncc]=size(r); 
   
      
   for i=1:nlc;
       
       for j=1:nlc;
                   
       a=r(i,:);
       
       b=centroidetra(:,j);
       
           
       
       distcentroidesa(i,j)= 1- (a*b)^2;// distancia entre os centroides
       
         end
       
   end
   
   // menor distancia entre os centroides
   for i=1:nlc;
       for j=1:nlc;
           
           if i<>j then
               
           menora(j)=distcentroidesa(i,j);  
           end 
                      

           end


   end
   

 
  dminmaxa=max(menora); // maxima distancia entre os centroides
  dmina= min(menora);// menor distância entre os centroides
  
  //criterio
  
  if dmina>dminF then
      rF=r;
      dminF=dmina;
    
  end

tra=tra+1;



end












