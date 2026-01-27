import crafttweaker.api.mod.Mod;

var mekanism_extras_items = loadedMods.mekanism_extras.itemStacks;
var targetContainer = ["energy_cube", "bin", "chemical_tank", "fluid_tank"];

for i in mekanism_extras_items {
  for l in targetContainer {
    if (l in i.toString()) {
      print("sysnote7");
      print(i.toString());
      i.maxStackSize = 1;
    }
  }
}