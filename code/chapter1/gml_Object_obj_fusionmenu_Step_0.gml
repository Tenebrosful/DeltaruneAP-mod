/// IMPORT
if (init == 0)
{
    xx = __view_get(e__VW.XView, 0);
    yy = __view_get(e__VW.YView, 0);
    customxy = 0;
    
    if (type == 4)
    {
        depth = -40000;
        scr_custommenu_item_info_refresh();
        wrap = 0;
        vwrap = 0;
        menuMax = 2;
        menuSprite = spr_heartsmall;
        menuHeight[0] = 6;
        menuWidth[0] = 2;
        menuMinimumID[0] = 0;
        menuMaximumID[0] = 11;
        menuVEdgeBehavior[0] = 1;
        menuHEdgeBehavior[0] = 1;
        menuPageSize[0] = 12;
        menuScrollAdd[0] = menuPageSize[0];
        menuX[0] = xx + 140;
        
        if (jp)
            menuX[0] = xx + 160;
        
        menuY[0] = yy + 140;
        menuBoxDraw[0] = 1;
        menuBoxDrawX1[0] = 40;
        menuBoxDrawY1[0] = 120;
        menuBoxDrawX2[0] = 600;
        menuBoxDrawY2[0] = 280;
        menuSpacingX[0] = 220;
        
        if (jp)
            menuSpacingX[0] = 180;
        
        menuSpacingY[0] = 20;
        menuTextOffsetX[0] = 14;
        menuTextOffsetY[0] = 4;
        menuTextOffsetX[1] = 14;
        menuTextOffsetY[1] = 4;
        menuTextScaleType[0] = 1;
        menuTextXScale[0] = 0.5;
        menuTextScaleType[1] = 1;
        menuTextYScale[1] = 0.5;
        menuDisplayCondition[1] = 0;
        menuHeight[1] = 6;
        menuWidth[1] = 2;
        menuMinimumID[1] = 0;
        menuMaximumID[1] = global.flag[64] - 1;
        menuVEdgeBehavior[1] = 1;
        menuHEdgeBehavior[1] = 2;
        menuPageSize[1] = 12;
        menuScrollAdd[1] = menuPageSize[1];
        menuX[1] = xx + 140;
        
        if (jp)
            menuX[1] = xx + 110;
        
        menuY[1] = yy + 290;
        menuBoxDraw[1] = 1;
        menuBoxDrawX1[1] = 40;
        menuBoxDrawY1[1] = 275;
        menuBoxDrawX2[1] = 600;
        menuBoxDrawY2[1] = 430;
        menuSpacingX[1] = 220;
        
        if (global.lang == "ja")
            menuSpacingX[1] = xx + 240;
        
        menuSpacingY[1] = 20;
        
        if (jp)
        {
            menuTextScaleType[0] = 1;
            menuTextScaleType[1] = 1;
            menuTextXScale[0] = 1;
            menuTextYScale[0] = 1;
            menuTextXScale[1] = 1;
            menuTextYScale[1] = 1;
            menuTextFont[0] = scr_84_get_font("dotumche");
            menuTextFont[1] = scr_84_get_font("dotumche");
            menuTextXScale[0] = 1;
            menuTextYScale[0] = 1;
            menuTextXScale[1] = 1;
            menuTextYScale[1] = 1;
            menuTextFont[0] = 12;
            menuTextFont[1] = 12;
            menuTextScaleType[1] = 1;
            menuX[1] = xx + 160;
            menuSpacingX[1] = 180;
        }
        else
        {
            menuTextScaleType[0] = 1;
            menuTextScaleType[1] = 1;
            menuTextXScale[0] = 1;
            menuTextYScale[0] = 1;
            menuTextXScale[1] = 1;
            menuTextYScale[1] = 1;
            menuTextFont[0] = scr_84_get_font("dotumche");
            menuTextFont[1] = scr_84_get_font("dotumche");
        }
    }
    
    if (customxy == 0)
        scr_custommenu_optionxy();
    
    heartX = menuX[0];
    heartY = menuY[0];
    init = 1;
}

event_inherited();

if (type == 4)
{
    if (menu == 1)
    {
        if (confirm_custom == 1)
        {
            var swapItemId = menuitemid[menuCoord[0]];
            var swapItemDesc = menuitemdesc[menuCoord[0]];
            var swapItemName = menuitemname[menuCoord[0]];
            var swapPocketId = pocketitemid[menuCoord[1]];
            var swapPocketDesc = pocketitemdesc[menuCoord[1]];
            var swapPocketName = pocketitemname[menuCoord[1]];
            
            if (swapPocketId > 0 && swapItemId > 0)
            {
                global.item[menuCoord[0]] = swapPocketId;
                global.pocketitem[menuCoord[1]] = swapItemId;
                optionID[0][menuCoord[0]] = swapPocketId;
                optionText[0][menuCoord[0]] = swapPocketName;
                optionTopComment[0][menuCoord[0]] = swapPocketDesc;
                optionID[1][menuCoord[1]] = swapItemId;
                optionText[1][menuCoord[1]] = swapItemName;
                optionTopComment[1][menuCoord[1]] = swapItemDesc;
                menuitemid[menuCoord[0]] = swapPocketId;
                menuitemdesc[menuCoord[0]] = swapPocketDesc;
                menuitemname[menuCoord[0]] = swapPocketName;
                pocketitemid[menuCoord[1]] = swapItemId;
                pocketitemdesc[menuCoord[1]] = swapItemDesc;
                pocketitemname[menuCoord[1]] = swapItemName;
            }
            else if (swapPocketId <= 0 && swapItemId > 0)
            {
                scr_itemshift(menuCoord[0], 0);
                global.pocketitem[menuCoord[1]] = swapItemId;
                scr_custommenu_item_info_refresh();
            }
            else if (swapPocketId > 0 && swapItemId <= 0)
            {
                scr_itemget(swapPocketId);
                global.pocketitem[menuCoord[1]] = 0;
                scr_custommenu_item_info_refresh();
            }
            
            snd_play(snd_select);
            optionSelected[0][menuCoord[0]] = 0;
            optionSelected[1][menuCoord[1]] = 0;
            menu = 0;
        }
    }
}

enum e__VW
{
    XView,
    YView,
    WView,
    HView,
    Angle,
    HBorder,
    VBorder,
    HSpeed,
    VSpeed,
    Object,
    Visible,
    XPort,
    YPort,
    WPort,
    HPort,
    Camera,
    SurfaceID
}
