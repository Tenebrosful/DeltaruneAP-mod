/// PATCH

/// REPLACE
flowercost = 100;
pinkcost = 3;
/// CODE
flowercost = 100;
pinkcost = 1;
/// END

/// REPLACE
menupopup = function(arg0 = 3, arg1 = 100, arg2 = 3)
/// CODE
menupopup = function(arg0 = 3, arg1 = 100, arg2 = 1)
/// END

/// REPLACE
    if (purchasecount == 4)
    {
        with (flower[6])
/// CODE
    if (purchasecount == 7)
    {
        with (flower[6])
/// END