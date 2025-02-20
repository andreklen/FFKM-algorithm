

// count the number of elements
function f=count(g)// receive results matrix
   
   [lg,cg]=size(g);
  


    for j=1:cg
    
        clusters = unique(g(:,j));

        for i = 1:size(clusters, 1)
         cluster = clusters(i);
            count1 = sum(g(:, j) == cluster);
            disp('Set ' + string(cluster) + ' count: ' + string(count1));
        end

   end 
   f=10; 
    
    endfunction
