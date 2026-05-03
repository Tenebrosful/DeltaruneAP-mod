/// PATCH

/// AFTER
if (eventtype == 0)
{
/// CODE
    if (target == 0)
    {
        with (obj_mainchara_board)
        {
            if (controlled)
                other.target = id;
        }
    }
    
/// END