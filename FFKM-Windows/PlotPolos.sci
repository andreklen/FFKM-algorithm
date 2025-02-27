// plot the pole

function polos(xa,ya,tc)
    
 hf=gcf();
    
 gcf().color_map = coolcolormap(64); // set color map
 c =tc;                  
 u="o"// (o) diamond figure
 s=50;   // size
 
 
 scatter(xa,ya,s,c,"fill",u) // plot the pole 
 
 
 
 
 
 hc=gca();
 
 hc.axes_visible="off";// "on "makes the axis visible. Nunbers (1) X e (2) y
endfunction
