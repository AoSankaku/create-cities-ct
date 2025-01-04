import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;

// Glowstone Dust ←→ Prismarine Crystal
<tag:items:c:glowstone_dusts>.add(<item:minecraft:prismarine_crystals>);

// Glowstone ←→ Sea Lantern(タグ作成)
<tag:items:c:bright_blocks>.add(<item:minecraft:sea_lantern>);
<tag:items:c:bright_blocks>.add(<item:minecraft:glowstone>);

// 
<tag:items:forge:dyes/yellow>.add(<item:thermal:sulfur_dust>);

// Handy Crash
craftingTable.addShapeless(
  "stone_conv",
  <item:minecraft:cobblestone>,
  [<item:minecraft:stone>, (<tag:items:forge:tools/pickaxes> as IIngredient)/*.anyDamage()*/.reuse().transformDamage(1)]
);

craftingTable.addShaped("deepslate_conv", <item:minecraft:cobbled_deepslate>, [
  [<item:minecraft:deepslate>]
]);
craftingTable.addShaped("clay_conv", <item:minecraft:clay_ball> * 4, [
  [<item:minecraft:clay>]
]);

// Crash using Stone Cutter
stoneCutter.addRecipe("cobblestone_from_stone_stonecutting", <item:minecraft:cobblestone>, <item:minecraft:stone>);
stoneCutter.addRecipe("cobbled_deepslate_from_deepslate_stonecutting", <item:minecraft:cobbled_deepslate>, <item:minecraft:deepslate>);

// Saddle uncrafting
craftingTable.addShapeless("saddle_uncrafting", <item:minecraft:leather> * 2, [
  <item:minecraft:saddle>
]);

// slideshow projector
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:slide_show:projector>);
//<blockstate:slide_show:projector>.setDestroySpeed(60.0f);
for x in <block:slide_show:projector>.getPossibleStates() {
  x.setDestroySpeed(0.5f);
}

craftingTable.addShapeless("slide_show.projector", <item:slide_show:projector>, [
  <tag:items:c:iron_blocks>, <item:minecraft:redstone_block>, <tag:items:forge:glass>, <tag:items:c:bright_blocks>
]);

// Seed Oil
<tag:items:c:seeds>.add(<item:supplementaries:flax_seeds>);


// Generate blaze rods from oil
//<recipetype:create:mixing>.addRecipe("mixed", <item:minecraft:blaze_rod>, [<tag:items:c:all_metal_rods>], [<fluid:minecraft:lava> * 100], 200);

/*
<recipetype:create:crushing>.addJsonRecipe("netherrack_crushing", {
  "type": "create:crushing",
  "ingredients": [
    {
      "item": "create:cinder_flour"
    }
  ],
  "results": [
    {
      "item": "kubejs:rusty_dust",
      "count": 1,
      "chance": 0.02,
      "precessingTime": 2000
    }
  ]
});
*/

// Wireless Crafting Grid
craftingTable.addShapeless("wireless_crafting_grid", <item:refinedstorageaddons:wireless_crafting_grid>,[
  <item:refinedstorage:wireless_grid>, <item:refinedstorage:advanced_processor>, <item:minecraft:crafting_table>
]);

// Creative Wireless Crafting Grid
craftingTable.addShapeless("creative_wireless_crafting_grid", <item:refinedstorageaddons:creative_wireless_crafting_grid>,[
  <item:refinedstorageaddons:wireless_crafting_grid>, <item:minecraft:nether_star>
]);

// Creative Wireless Crafting Grid
craftingTable.addShaped("creative_wireless_universal_grid", <item:universalgrid:creative_wireless_universal_grid>,[
  [<item:minecraft:diamond>,<item:refinedstorage:creative_wireless_fluid_grid>,<item:minecraft:diamond>],
  [<item:refinedstorage:quartz_enriched_iron>,<item:refinedstorage:creative_wireless_grid>,],
  [<item:minecraft:diamond>,<item:refinedstorageaddons:creative_wireless_crafting_grid>,<item:minecraft:diamond>]
]);

craftingTable.addShapeless("wireless_universal_grid_to_creative_wireless_universal_grid", <item:universalgrid:creative_wireless_universal_grid>,[
  <item:universalgrid:wireless_universal_grid>, <item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:minecraft:nether_star>
]);

// Automobility Slopes
// DEPRECATED: Destroying automobility slopes causes client-side crash, incompatible with flywheel maybe
/* 
craftingTable.addShaped("slope", <item:automobility:slope>,[
  [<item:minecraft:air>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>],
  [<tag:items:forge:ingots/steel>,<item:minecraft:iron_bars>,<item:minecraft:iron_bars>]
]);

craftingTable.addShaped("steep_slope", <item:automobility:steep_slope> * 3,[
  [<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:ingots/steel>],
  [<item:minecraft:air>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>],
  [<tag:items:forge:ingots/steel>,<item:minecraft:iron_bars>,<item:minecraft:iron_bars>]
]);
*/

craftingTable.remove(<item:automobility:slope>);
craftingTable.remove(<item:automobility:steep_slope>);

// Foods nerf
craftingTable.remove(<item:brewery:potato_salad>);
craftingTable.addShapeless("true_potato_salad", <item:brewery:potato_salad> * 2,[
  <tag:items:forge:pasta>, <item:minecraft:carrot>, <item:farmersdelight:onion>, <item:farmersdelight:onion>, <item:moredelight:diced_potatoes>, <item:moredelight:diced_potatoes>, <item:minecraft:bowl>
]);

// Replacement for recipes using yellow dye
Replacer.create()
  .replace<IIngredient>(
    <recipecomponent:crafttweaker:input/ingredients>,
    <item:minecraft:yellow_dye>,
    <tag:items:forge:dyes/yellow>.asIIngredient()
  )
  .execute();