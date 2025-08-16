#priority 100

// Create a group of glowing powders
<tag:items:create_cities:glowstone_dusts>.add([
  <item:minecraft:prismarine_crystals>,
  <item:minecraft:glowstone_dust>
]);
<tag:items:create_cities:glowstone_dusts>.add(<tag:items:projectred_core:illumars>);

// Glowstone ←→ Sea Lantern(タグ作成)
<tag:items:create_cities:bright_blocks>.add([
  <item:minecraft:sea_lantern>, <item:minecraft:glowstone>, <item:quark:blaze_lantern>
]);
<tag:items:create_cities:bright_blocks>.add(<tag:items:chipped:sea_lantern>);
<tag:items:create_cities:bright_blocks>.add(<tag:items:chipped:glowstone>);
<tag:items:create_cities:bright_blocks>.add(<tag:items:rechiseled:glowstone>);

var colors = ["red", "orange", "yellow", "lime", "green", "cyan", "light_blue", "blue", "purple", "pink", "magenta", "brown", "white", "light_gray", "gray", "black"];
for i in colors {
  <tag:items:create_cities:bright_blocks>.add(<item:projectred_illumination:${i}_inverted_illumar_lamp>);
}
