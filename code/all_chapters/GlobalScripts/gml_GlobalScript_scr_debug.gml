/// PATCH .ignore if CHAPTER_1

/// REPLACE
#if CHAPTER_2
    return 0;
#else
    if (global.debug == 1)
        return 1;
#endif
/// CODE
    return global.debug
/// END