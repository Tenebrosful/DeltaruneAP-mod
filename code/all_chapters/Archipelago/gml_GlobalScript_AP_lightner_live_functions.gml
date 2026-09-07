/// FUNCTIONS

AP_handle_lightner_live_rank(rank, hard_mode = global.band_difficulty)
{
  var base_index = AP_internal_lightner_live_get_base_index_track()

  if (hard_mode)
  {
    base_index += 6;
    AP_handle_lightner_live_rank(rank, false)
  }

  locations = []

  for (var i = 0; i <= rank; i++)
  {
    if (i == 0 && i != rank) continue;
    
    array_push(locations, base_index + i)
  }

  AP_sendLocations(locations)
}

AP_internal_lightner_live_get_base_index_track()
{
  switch(global.band_song)
  {
    case 2:
      return 372;
    case 10:
      return 384;
    case 15:
      return 408;
    default:
      return 396;
  }
}