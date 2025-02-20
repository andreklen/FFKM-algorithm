
//Print Xb index

function Xbl=impress(GI)
    
   // clusters = unique(g(:,j));

        for i = 1:length(GI)
            
         XBpress = GI(i);
         
            j=i+1;           
            
            disp('Xie-Beni for K= ' + string(j));
            
            disp(string(XBpress));
        end

       
    
    
   Xbl =0;
    
    
    endfunction
