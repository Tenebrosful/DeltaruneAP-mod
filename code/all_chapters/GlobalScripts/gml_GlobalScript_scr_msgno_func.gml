/// IMPORT
function scr_msgno_func(arg0, arg1, arg2 = 0, arg3 = 0, arg4 = 30, arg5 = -4)
{
    var __watcher = instance_create_depth(0, 0, 0, obj_msgno_func);
    __watcher.msgno = arg0;
    __watcher.dothing = arg1;
    __watcher.when = arg2;
    __watcher.functiontime = arg3;
    __watcher.doomer = arg4;
    __watcher.target = arg5;
    return __watcher;
}

function scr_msgfunc(arg0, arg1 = 0, arg2 = 0, arg3 = 30, arg4 = -4)
{
    var __watcher = instance_create_depth(0, 0, 0, obj_msgno_func);
    __watcher.msgno = global.msgno;
    __watcher.dothing = arg0;
    __watcher.when = arg1;
    __watcher.functiontime = arg2;
    __watcher.doomer = arg3;
    __watcher.target = arg4;
    return __watcher;
}
