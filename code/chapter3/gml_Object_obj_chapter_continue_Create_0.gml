/// IMPORTvar chapter = string(global.chapter);
var next_chapter = string(global.chapter + 1);
choice_text[0] = (global.lang == "en") ? stringsetsub("Return to Chapter Select", next_chapter) : stringsetsub("Chapter ~1へ進む", next_chapter);
choice_text[1] = (global.lang == "en") ? stringsetsub("Keep Playing Chapter 3", chapter) : stringsetsub("このままChapter ~1をプレイ", chapter);
choice_index = 0;
confirmed_selection = false;
text_alpha = 0;