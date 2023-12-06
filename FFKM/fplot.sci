// plot and configure the circle 
function fplot(x,y)
 
    hf=gcf();
    
    hf.background=-2;
    colordef("white")
    hf.children.font_size=3;
       
    plot2d(x,y,frameflag=4);
   
    ha=gca();
    ha.children.children.foreground=2;
    ha.x_location = "origin";
    ha.y_location = "origin";
    ha.box="off";
    ha.axes_visible(1)="off";
    ha.axes_visible(2)="off";
    ha.filled="on";
     
      
    
    title("N","Fontsize",3)

    
    
      
   
    
    
    
endfunction
