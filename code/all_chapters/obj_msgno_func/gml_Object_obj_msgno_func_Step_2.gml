/// IMPORT
var trig = false;

if (instance_exists(obj_writer))
{
    if (obj_writer.msgno >= msgno)
    {
        if (when == 0)
            trig = true;
        
        if (when == 1)
        {
            if (obj_writer.halt == true)
                trig = true;
        }
    }
}
else
{
    doomer--;
    
    if (doomer <= 0)
        instance_destroy();
}

if (triggered)
{
    trig = false;
    doomer = 999;
}
else if (trig)
{
    var whodo = target;
    
    if (target == -4)
    {
        dothing();
    }
    else
    {
        with (target)
            other.dothing();
    }
    
    triggered = true;
    instance_destroy();
}

if (triggered)
{
    functiontime--;
    
    if (functiontime <= 0)
        instance_destroy();
}
