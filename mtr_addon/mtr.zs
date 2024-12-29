import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.condition.LootConditions;

//PIDS
craftingTable.addShapeless("pids_lu", <item:londonunderground:pids_northern>, [<item:mtr:pids_1>, <item:minecraft:gray_dye>]);

//PIDS pole
craftingTable.addShaped("pids_lu_poles", <item:londonunderground:pids_pole> * 8, [
  [<item:mtr:pids_pole>, <item:mtr:pids_pole>, <item:mtr:pids_pole>],
  [<item:mtr:pids_pole>, <tag:items:c:gray_dyes>, <item:mtr:pids_pole>],
  [<item:mtr:pids_pole>, <item:mtr:pids_pole>, <item:mtr:pids_pole>]
]);


//Airplane
/*
craftingTable.addShaped("airplane_node", <item:mtr:airplane_node> * 32, [
  [<tag:items:c:iron_ingots>, <tag:items:c:iron_ingots>, <tag:items:c:iron_ingots>],
  [<item:minecraft:diamond_block>, <item:minecraft:air>, <item:minecraft:diamond_block>],
  [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
]);
*/
craftingTable.addShaped("runway_connector", <item:mtr:rail_connector_runway>, [
  [<item:minecraft:diamond_block>, <tag:items:minecraft:rails>, <item:minecraft:diamond_block>],
  [<item:minecraft:diamond_block>, <tag:items:c:redstone_blocks>, <item:minecraft:diamond_block>],
  [<item:minecraft:air>, <tag:items:minecraft:rails>, <item:minecraft:air>]
]);
/*
craftingTable.addShaped("airplane_dashboard", <item:mtr:dashboard_4>, [
  [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
  [<tag:items:c:redstone_dusts>, <item:minecraft:glass_pane>, <tag:items:c:glowstone_dusts>],
  [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]
]);
*/


//Logo
craftingTable.addShapeless("logo_lu", <item:londonunderground:tfl_block>, [
  <item:mtr:metal>, <tag:items:c:blue_dyes>
]);


//Platforms(London Underground)
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:londonunderground:platform_tfl_1>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:londonunderground:platform_tfl_island>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:londonunderground:platform_tfl_gap>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:londonunderground:platform_block>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:londonunderground:platform_variant>);
for i in <tag:items:c:pickaxes>.elements {
  <block:londonunderground:platform_tfl_1>.addToolLootModifier(
    "lu_platform_tfl_1" + <tag:items:c:pickaxes>.elements.indexOf(i),
    i,
    CommonLootModifiers.add(<item:londonunderground:platform_tfl_1>)
  );
}
for i in <tag:items:c:pickaxes>.elements {
  <block:londonunderground:platform_tfl_island>.addToolLootModifier(
    "lu_platform_tfl_island" + <tag:items:c:pickaxes>.elements.indexOf(i),
    i,
    CommonLootModifiers.add(<item:londonunderground:platform_tfl_island>)
  );
}
for i in <tag:items:c:pickaxes>.elements {
  <block:londonunderground:platform_tfl_gap>.addToolLootModifier(
    "lu_platform_tfl_gap" + <tag:items:c:pickaxes>.elements.indexOf(i),
    i,
    CommonLootModifiers.add(<item:londonunderground:platform_tfl_gap>)
  );
}
for i in <tag:items:c:pickaxes>.elements {
  <block:londonunderground:platform_block>.addToolLootModifier(
    "lu_platform_block" + <tag:items:c:pickaxes>.elements.indexOf(i),
    i,
    CommonLootModifiers.add(<item:londonunderground:platform_block>)
  );
}
for i in <tag:items:c:pickaxes>.elements {
  <block:londonunderground:platform_variant>.addToolLootModifier(
    "lu_platform_variant" + <tag:items:c:pickaxes>.elements.indexOf(i),
    i,
    CommonLootModifiers.add(<item:londonunderground:platform_variant>)
  );
}


//Adjustment for other unmineable blocks
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:mtr:airplane_node>);

for i in <tag:items:c:pickaxes>.elements {
  //print(i.toString());
  <block:mtr:airplane_node>.addToolLootModifier(
    "airplane_node" + <tag:items:c:pickaxes>.elements.indexOf(i),
    i,
    CommonLootModifiers.add(<item:mtr:airplane_node>)
  );
}
