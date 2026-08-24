/// IMPORT
function AP_handle_balancing(amount, expected_chapter, should_round = true)
{
    if (!global.AP_balancing || amount == 0) return amount;

    var chapter_diff = max(expected_chapter - global.chapter, 0);

    var factor = min((1 / (chapter_diff + 1)) * 1.5, 1);

    var final = amount * factor;

    if (should_round)
        return round(final)
    else
        return final
}