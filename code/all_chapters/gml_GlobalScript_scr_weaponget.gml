/// PATCH

/// REPLACE
#if CHAPTER_1
    global.weapon[12] = 999;
#else
    global.weapon[48] = 999;
#endif
/// CODE
global.weapon[48] = 999;
/// END

#if !CHAPTER_1
/// REPLACE

        for (__i = 0; __i < 48; __i++)
        {
/// CODE

        for (__i = 0; __i < 48; __i++)
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
            for (__i = 0; __i < 48; __i++)
            {
/// END
#endif