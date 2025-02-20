function values(data)
    // Extract columns
    dip = data(:, 1);           // Dip column
    direction = data(:, 2);     // Direction column
    type = data(:, 3);          // Type column

    // Get unique types
    types = unique(type);
    num_types = length(types);

    // Iterate through each type
    for i = 1:num_types
        current_type = types(i);

        // Get indices for the current type
        indices = find(type == current_type);

        // Filter data for the current type
        dip_current = dip(indices);
        direction_current = direction(indices);

        // Calculate min and max for Dip and Direction
        min_dip = min(dip_current);
        max_dip = max(dip_current);
        min_direction = min(direction_current);
        max_direction = max(direction_current);

        // Print the results
        mprintf("Set: %d\n", current_type);
        mprintf("  Dip: Min = %g, Max = %g\n", min_dip, max_dip);
        mprintf("  Direction: Min = %g, Max = %g\n\n", min_direction, max_direction);
    end
endfunction
