/// PATCH

/// REPLACE
    var language_text = (global.lang == "en") ? "日本語" : "English";
    var language_choice = instance_create(x + 260, y + 24, obj_ui_choice);
    language_choice.init(id, language_text, UnknownEnum.Value_5);
    language_choice.set_alpha(0);
    language_choice.y -= 40;
    
    if (global.lang == "en")
        language_choice.set_font(1);
    else
        language_choice.set_font(2);

/// CODE
var language_text = "Disconnect";
    var language_choice = instance_create(x + 260, y + 24, obj_ui_choice);
    language_choice.init(id, language_text, UnknownEnum.Value_5);
    language_choice.set_alpha(0);
    language_choice.y -= 40;
    language_choice.set_font(2);
/// END