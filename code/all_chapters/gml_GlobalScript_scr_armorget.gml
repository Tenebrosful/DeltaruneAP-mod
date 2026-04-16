/// PATCH

/// REPLACE
#if CHAPTER_1
    global.armor[12] = 999;
#else
    global.armor[48] = 999;
#endif
/// CODE
global.armor[60] = 999;
/// END

#if !CHAPTER_1
/// REPLACE

        for (__i = 0; __i < 48; __i++)
        {
/// CODE

        for (__i = 0; __i < 60; __i++)
        {
/// END
#endif

#if !CHAPTER_1
/// REPLACE
        {
            for (__i = 0; __i < 48; __i++)
            {
/// CODE
        {
            for (__i = 0; __i < 60; __i++)
            {
/// END
#endif