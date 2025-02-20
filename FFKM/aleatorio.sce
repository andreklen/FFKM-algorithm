// Initializatiion method - Fisher distribution

tic();
tra=0;
dminF=0;
rF=[];

clear rF

               
               
                while tra<=1000;
clear r


wc=lwhi;



kappa=0.01;

n=wc;

c= 2/kappa*(sinh(kappa));
y = rand(n,1);

W = (1/kappa) * log( exp(-kappa) + kappa * c * y );


v = 2*%pi*rand(n,1);




v = [cos(v) sin(v)];
r = [repmat(sqrt(1-W.^2),1,2).*v W];



// upper hemisphere

for i=1:wc
    
    if r(i,3)<0 then
        r(i,1:3)=-1*(r(i,1:3));
    end
    
    
end
        // distance between the initial centers
       
  distcentroidesa=dist(r,r);
       
      [nlsa,ncsa]=size(distcentroidesa);  
      
      for i=1:nlsa;
          for j=1:nlsa;
              
              if distcentroidesa(i,j)==0;
                  
                  distcentroidesa(i,j)=1000;
                end
                
             end
       end
   
   
   // minimum distance between the initial centers
  
  menora=min(distcentroidesa);

  dminmaxa=max(menora); // highest distance between initial centers
  dmina= min(menora);// minimum distance between initial centers
  
  //decision
  
  if dmina>dminF then
      rF=r;
      dminF=dmina;
    
  end

tra=tra+1;



end

tim2=toc();














