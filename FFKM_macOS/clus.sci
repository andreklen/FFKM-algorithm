 
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
r=sqrt(2);// scale factor
r1=1.5;// radius sphere

t=linspace(0,2*%pi,500);
x=r1*cos(t)+a;
y=r1*sin(t)+b;



// Identifies the pole position on the sphere
[nl, nc]=size(dadosrad)
xa = zeros(nl, 1);
ya = zeros(nl, 1);
for j=1:nl
// Equal angle projection upper hemisphere
//xa(j)=sin(dadosrad(j,2))*r1*tan(dadosrad(j,1)/2)
//ya(j)=cos(dadosrad(j,2))*r1*tan(dadosrad(j,1)/2)

// Equal area projection-upper hemisphere
xa(j) = sqrt(2)*r1* sin(dadosrad(j, 1) / 2) * sin(dadosrad(j, 2)); //X-coordinate
ya(j) = sqrt(2)*r1*sin(dadosrad(j, 1) / 2) * cos(dadosrad(j, 2)); // Y-coordinate

//xa(j)=r*sin(dadosrad(j,1)/2)*sin(dadosrad(j,1));

//ya(j)=r*sin(dadosrad(j,1)/2)*cos(dadosrad(j,1));
end
polos(xa,ya,dadoscl);
fplot(x,y,kic);

endfunction

