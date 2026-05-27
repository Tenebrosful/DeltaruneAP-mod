/// IMPORT

function AP_resolve_route_name(route)
{
  switch(route)
  {
    case global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS: return "All Recruits";
    case global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE: return "Weird Route";
    case global.AP_ENUM_CHOSEN_ROUTE.ALL_ROUTES: return "All Routes";
    case global.AP_ENUM_CHOSEN_ROUTE.NEUTRAL_ROUTE: return "Neutral Route";
    default: return "Unknown";
  }
}