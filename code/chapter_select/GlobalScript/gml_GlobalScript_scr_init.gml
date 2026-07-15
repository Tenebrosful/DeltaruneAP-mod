/// PATCH

/// REPLACE
function get_version()
{
    var version = "v22";
    return version;
}
/// CODE
function get_version()
{
    return #GetVersion();
}
/// END

/// REPLACE
function get_title()
{
    var title = "DELTARUNE";
    return title;
}
/// CODE
function get_title()
{
    var title = "DELTARUNE Chapter Select - Archipelago " + get_version();
    return title;
}
/// END