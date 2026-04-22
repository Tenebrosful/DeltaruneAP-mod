/// PATCH

/// REPLACE
choice_text[0] = (global.lang == "en") ? stringsetsub("Continue to Chapter ~1", next_chapter) : stringsetsub("Chapter ~1へ進む", next_chapter);
choice_text[1] = (global.lang == "en") ? stringsetsub("Keep Playing Chapter ~1", chapter) : stringsetsub("このままChapter ~1をプレイ", chapter);
/// CODE
choice_text[0] = (global.lang == "en") ? stringsetsub("Return to Chapter Select", next_chapter) : stringsetsub("Chapter ~1へ進む", next_chapter);
choice_text[1] = (global.lang == "en") ? stringsetsub("Keep Playing Chapter 2", chapter) : stringsetsub("このままChapter ~1をプレイ", chapter);
/// END