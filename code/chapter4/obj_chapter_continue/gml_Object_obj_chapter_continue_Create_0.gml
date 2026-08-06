/// PATCH

/// REPLACE
choice_text[0] = (global.lang == "en") ? stringsetsub("Continue to Chapter ~1", next_chapter) : stringsetsub("Chapter ~1へ進む", next_chapter);
/// CODE
choice_text[0] = (global.lang == "en") ? stringsetsub("Return to Chapter Select", next_chapter) : stringsetsub("Chapter ~1へ進む", next_chapter);
/// END