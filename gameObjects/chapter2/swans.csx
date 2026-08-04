using UndertaleModLib.Util;

void SetSwansProperties()
{
  var swan = Data.Sprites.ByName("spr_swanboat_fast");
  swan.MarginLeft = 2;
  swan.MarginRight = 73;
  swan.MarginBottom = 63;
  swan.MarginTop = 42;
  swan.BBoxMode = (uint)2;
  swan.IsSpecialType = true;
  swan.SVersion = (uint)3;
  swan.SSpriteType = UndertaleSprite.SpriteType.Normal;
  swan.GMS2PlaybackSpeed = 1.0f;
  swan.GMS2PlaybackSpeedType = AnimSpeedType.FramesPerGameFrame;

  var swan_cover = Data.Sprites.ByName("spr_swanboat_cover_fast");
  swan_cover.MarginLeft = 2;
  swan_cover.MarginRight = 73;
  swan_cover.MarginBottom = 63;
  swan_cover.MarginTop = 42;
  swan_cover.BBoxMode = (uint)2;
  swan_cover.IsSpecialType = true;
  swan_cover.SVersion = (uint)3;
  swan_cover.SSpriteType = UndertaleSprite.SpriteType.Normal;
  swan_cover.GMS2PlaybackSpeed = 1.0f;
  swan_cover.GMS2PlaybackSpeedType = AnimSpeedType.FramesPerGameFrame;

  var swan_shadow = Data.Sprites.ByName("spr_swanboat_shadow_fast");
  swan_shadow.MarginLeft = 2;
  swan_shadow.MarginRight = 73;
  swan_shadow.MarginBottom = 63;
  swan_shadow.MarginTop = 42;
  swan_shadow.BBoxMode = (uint)2;
  swan_shadow.IsSpecialType = true;
  swan_shadow.SVersion = (uint)3;
  swan_shadow.SSpriteType = UndertaleSprite.SpriteType.Normal;
  swan_shadow.GMS2PlaybackSpeed = 1.0f;
  swan_shadow.GMS2PlaybackSpeedType = AnimSpeedType.FramesPerGameFrame;

  var swan_squish = Data.Sprites.ByName("spr_swanboat_squish_fast");
  swan_squish.MarginLeft = 2;
  swan_squish.MarginRight = 73;
  swan_squish.MarginBottom = 63;
  swan_squish.MarginTop = 42;
  swan_squish.BBoxMode = (uint)2;
  swan_squish.IsSpecialType = true;
  swan_squish.SVersion = (uint)3;
  swan_squish.SSpriteType = UndertaleSprite.SpriteType.Normal;
  swan_squish.GMS2PlaybackSpeed = 1.0f;
  swan_squish.GMS2PlaybackSpeedType = AnimSpeedType.FramesPerGameFrame;
}