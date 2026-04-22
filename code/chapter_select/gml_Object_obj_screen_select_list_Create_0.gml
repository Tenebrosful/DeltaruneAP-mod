/// PATCH

/// REPLACE
var max_chapter = UnknownEnum.Value_7;
var max_available_chapter = UnknownEnum.Value_4;
/// CODE
var max_chapter = 7;
var max_available_chapter = 4;
/// END

/// REPLACE
    var chapter = _slots[i];
    chapter.enable();
    _chapters[array_length(_chapters)] = chapter;
/// CODE
    if (global.chapter[i] == 1)
    {
        var chapter = _slots[i];
        chapter.enable();
        _chapters[array_length(_chapters)] = chapter;
    }
/// END

/// REPLACE

enum UnknownEnum
{
    Value_4 = 4,
    Value_7 = 7
}
/// CODE
/// END