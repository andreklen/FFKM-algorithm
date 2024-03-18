// plot the pole

function polos(xa,ya,tc)
  
  
  
 c =tc; // cluster informations                  
 //u="o"// (o) diamond figure
 s=50;   // size
 
  my_list=['o', 's', '>', '*','d','v','.',"^."];
  
  my_color=['red','blue','green','black','yellow','magenta','cyan'];
  
  
    legend_entries = [];

    As = unique(c);
    for i = 1:length(As)
        indices_cluster = find(c == As(i));
        xa_cluster = xa(indices_cluster);
        ya_cluster = ya(indices_cluster);
        //c_cluster = c(indices_cluster);
        
         c_cluster = my_color(i);
        
        u=my_list(i);

        scatter(xa_cluster, ya_cluster, s, c_cluster,'fill', u);
        
       legend_entries = [legend_entries; ['Set' + string(As(i))]];
       
    end

   
  
  legend(legend_entries, 'boxed', %f);

 
 sn=50
 
  
scatter(0,0,sn,"fill",'+')


 hc=gca();
 
 hc.axes_visible="off";// "on "makes the axis visible. Nunbers (1) X e (2) y
endfunction
