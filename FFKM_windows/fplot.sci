function fplot(x, y, ki)
    hf = gcf();
    hf.background = -2; // Set background to white
    colordef("white");
    hf.children.font_size = 3;

  plot2d(x, y, frameflag = 4);
    
    
    
   // Change 'thickness' value to your preference

    
    // Fix the aspect ratio
    ha = gca(); // Get current axes
    ha.isoview = "on"; // Enforce equal scaling for x and y axes

    ha = gca();
    ha.children.children.foreground = 2;
    ha.x_location = "origin";
    ha.y_location = "origin";
    ha.box = "off";
    ha.axes_visible(1) = "off";
    ha.axes_visible(2) = "off";
    ha.filled = "on";

    // Add title
    if ki == 1 then
        xtitle('Upper Hemispherical projection');
    else
        xtitle('Discontinuity sets: K=' + string(ki));
    end

    // Ensure the axes limits are appropriate for the cardinal directions
    ha.data_bounds = [-1.7, -1.7; 1.7, 1.7]; // Increase the bounds to fit the cardinal directions
    
    // Add cardinal directions using xstring with increased offset
    xstring(0, 1.5, "N", 4);  // North, moved further up
    xstring(0, -1.7, "S", 4); // South, moved further down
    xstring(1.5, 0, "E", 4);  // East, moved further right
    xstring(-1.65, 0, "W", 4); // West, moved further left

    // Debugging Step: Ensure the plot is updated
    drawnow(); // Force Scilab to render the graphical elements
endfunction
