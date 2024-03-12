
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
r=1;// radius
t=linspace(0,2*%pi,100);
x=r*cos(t)+a;
y=r*sin(t)+b;



// Identifies the pole position on the sphere
[nl, nc]=size(dadosrad)

for j=1:nl

xa(j)=sin(dadosrad(j,2))*r*tan(dadosrad(j,1)/2)
ya(j)=cos(dadosrad(j,2))*r*tan(dadosrad(j,1)/2)

end
polos(xa,ya,dadoscl);
fplot(x,y,kic);

endfunction
