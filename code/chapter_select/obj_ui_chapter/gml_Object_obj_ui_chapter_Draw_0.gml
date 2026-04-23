/// PATCH

/// BEFORE
if (_title_enabled)

/// CODE
if (_chapter <= (array_length(global.AP_chapter) - 1))
{
    if (!global.AP_chapter[_chapter])
        _color = 8421504;
}
/// END