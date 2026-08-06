/// PATCH

/// REPLACE
    with (d_make())
    {
        var _skippable = false;
        
        if (!_skippable)
        {
            skippable = 0;
            preventcskip = true;
        }
    }
    
    con = 1.01;
/// CODE
    with (d_make())
    {
        var _skippable = true;
        
        if (!_skippable)
        {
            skippable = 0;
            preventcskip = true;
        }
    }
    
    con = 1.01;
/// END

/// REPLACE
        with (d_make())
        {
            var _skippable = false;
            
            if (!_skippable)
            {
                skippable = 0;
                preventcskip = true;
            }
        }
        
        con = 2;
/// CODE

        with (d_make())
        {
            var _skippable = true;
            
            if (!_skippable)
            {
                skippable = 0;
                preventcskip = true;
            }
        }
        
        con = 2;
/// END