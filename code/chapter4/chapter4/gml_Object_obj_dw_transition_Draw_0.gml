/// PATCH

/// PREPEND
if (!i_ex(obj_mainchara))
{
    instance_destroy();
    
    if (i_ex(megablack))
    {
        with (megablack)
            instance_destroy();
    }
    
    exit;
}
/// END