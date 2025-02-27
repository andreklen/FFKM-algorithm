 
// create the circle and read the data




function clus(D,kic)// recieves the data matrix


dados1=D(:,1:2);// recieves dip/direction
dadoscl=D(:,3); // recieves the clusters identification

// Radian data
dadosr=(dados1)*(%pi);
dadosrad=dadosr/180;


// parameters for the create the circle
a=0;  
b=0;
r=sqrt(2);// radius
//r2=1;
t=linspace(0,2*%pi,500);
x=r*cos(t)+a;
y=r*sin(t)+b;



// Identifies the pole position on the sphere
[nl, nc]=size(dadosrad)

for j=1:nl

//xa(j)=sin(dadosrad(j,2))*r2*tan(dadosrad(j,1)/2)
//ya(j)=cos(dadosrad(j,2))*r2*tan(dadosrad(j,1)/2)
xa(j)=sin(dadosrad(j,2))*r*tan(dadosrad(j,1)/2)
ya(j)=cos(dadosrad(j,2))*r*tan(dadosrad(j,1)/2)

//xa(j)=r*sin(dadosrad(j,1)/2)*sin(dadosrad(j,1));

//ya(j)=r*sin(dadosrad(j,1)/2)*cos(dadosrad(j,1));
end
polos(xa,ya,dadoscl);
fplot(x,y,kic);

endfunction

