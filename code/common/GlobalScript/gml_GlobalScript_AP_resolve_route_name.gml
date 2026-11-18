/// IMPORT

function AP_resolve_route_name(route)
{
  switch(route)
  {
    case global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS: return "All Recruits";
    case global.AP_ENUM_CHOSEN_ROUTE.SIDE_B: return "Side B";
    case global.AP_ENUM_CHOSEN_ROUTE.BOTH_ROUTES: return "Both Routes";
    case global.AP_ENUM_CHOSEN_ROUTE.NEUTRAL_ROUTE: return "Neutral Route";
    default: return "Unknown";
  }
}