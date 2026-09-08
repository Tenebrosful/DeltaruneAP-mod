/// PATCH

/// BEFORE
    return _xsndinstance;
/// CODE
    with (obj_astream)
    {
        if (mystream == arg0)
        {
            looptarget = AP_set_looptarget(songname, other._xsndinstance);
            looptime = AP_get_looptime(songname);
        }
    }
/// END