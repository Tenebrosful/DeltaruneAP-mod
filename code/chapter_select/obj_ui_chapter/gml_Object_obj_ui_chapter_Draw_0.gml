/// PATCH

/// BEFORE
if (_title_enabled)

/// CODE
if (_chapter <= (array_length(global.AP_chapter_unlocked) - 1))
{
    if (!global.AP_chapter_unlocked[_chapter])
        _color = 8421504;
}
/// END