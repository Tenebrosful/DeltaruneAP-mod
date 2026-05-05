/// PATCH

/// REPLACE
    var is_replay = global.plot >= 150;
/// CODE
    var is_replay = global.plot >= 150 && !global.retry_board;
/// END