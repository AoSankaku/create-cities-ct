import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.mod.Mod;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.FurnaceRecipeManager;


public class Test {
  public static val modernjapancity_items = loadedMods.modernjapancity.items;
} 


// White Lines and signs

function bulkAddItemsToTag(targetTag as KnownTag<ItemDefinition>, match_string as string[]) as void {
  for i in Test.modernjapancity_items {
    for l in match_string {
      if (l in i.toString()) {
        targetTag.add(i.defaultInstance);
      }
    }
  }
}

bulkAddItemsToTag(<tag:items:create_cities:white_lines>, ["white_arrow_", "road_guide_sign_name_"]);

<tag:items:create_cities:white_lines>.add(
  <item:modernjapancity:white_line>,
  <item:modernjapancity:white_cross_line>,
  <item:modernjapancity:white_t_line>,
  <item:modernjapancity:white_pedestrian_crossing>,
  <item:modernjapancity:stop_lines_and_white_lines>,
  <item:modernjapancity:white_line_curve>,
  <item:modernjapancity:stop_lines_and_white_lines_2>,
  <item:modernjapancity:white_rhombus>,
  <item:modernjapancity:white_bus>
);

for i in <tag:items:create_cities:white_lines>.elements {
  stoneCutter.addRecipe(
    "white_lines_" + <tag:items:create_cities:white_lines>.elements.indexOf(i),
    i as IItemStack * 8,
    <tag:items:forge:dyes/white>
  );
}

// Orange Lines
<tag:items:create_cities:orange_lines>.add(
  <item:modernjapancity:orange_30>,
  <item:modernjapancity:orange_40>,
  <item:modernjapancity:orange_50>,
  <item:modernjapancity:orange_60>,
  <item:modernjapancity:orange_line>,
  <item:modernjapancity:stop_lines_and_orange_lines>,
  <item:modernjapancity:orange_line_curve>,
  <item:modernjapancity:stop_lines_and_orange_lines_2>,
  <item:modernjapancity:orange_uturn>,
  <item:modernjapancity:orange_x>
);

for i in <tag:items:create_cities:orange_lines>.elements {
  stoneCutter.addRecipe(
    "orange_lines_" + <tag:items:create_cities:orange_lines>.elements.indexOf(i),
    i as IItemStack * 8,
    <tag:items:forge:dyes/orange>
  );
}

// Blue Lines
<tag:items:create_cities:blue_lines>.add(
  <item:modernjapancity:blue_arrow_feathers>
);

for i in <tag:items:create_cities:blue_lines>.elements {
  stoneCutter.addRecipe(
    "blue_lines_" + <tag:items:create_cities:blue_lines>.elements.indexOf(i),
    i as IItemStack * 8,
    <tag:items:forge:dyes/blue>
  );
}


// White Poles
<tag:items:create_cities:poles/white>.add(
  <item:modernjapancity:road_guide_sign_pole>,
  <item:modernjapancity:road_guide_sign_pole_brace>,
  <item:modernjapancity:signal_pole>,
  <item:modernjapancity:signal_pole_curve>,
  <item:modernjapancity:pedestrian_signal_pole>,
  <item:modernjapancity:signal_pole_connect>,
  <item:modernjapancity:white_pole>
);

craftingTable.addShaped("white_pole", <item:modernjapancity:road_guide_sign_pole> * 8, [
  [<item:minecraft:white_concrete>],
  [<tag:items:forge:ingots/zinc>],
  [<item:minecraft:white_concrete>]
]);

for i in <tag:items:create_cities:poles/white>.elements {
  stoneCutter.addRecipe(
    "white_poles_" + <tag:items:create_cities:poles/white>.elements.indexOf(i),
    i,
    <tag:items:create_cities:poles/white>
  );
}


// Gray Poles
<tag:items:create_cities:poles/gray>.add(
  <item:modernjapancity:utility_pole>,
  <item:modernjapancity:utility_pole_reflector>,
  <item:modernjapancity:utility_pole_scaffold>,
  <item:modernjapancity:utility_pole_top>,
  <item:modernjapancity:pillar_transformer>,
  <item:modernjapancity:concrete_signal_pole>,
  <item:modernjapancity:concrete_signal_pole_top>,
  <item:modernjapancity:concrete_signal_pole_brace>,
  <item:modernjapancity:concreate_signal_pole_p_arm>,
  <item:modernjapancity:vehicle_signals_arm_head>,
  <item:modernjapancity:vehicle_signals_arm>,
  <item:modernjapancity:pedestrian_signal_arm>,
  <item:modernjapancity:old_pedestrian_signal_arm>,
  <item:modernjapancity:signal_speaker>,
  <item:modernjapancity:bollard>
);

craftingTable.addShaped("utility_pole", <item:modernjapancity:utility_pole> * 8, [
  [<item:minecraft:gray_concrete>],
  [<tag:items:forge:ingots/zinc>],
  [<item:minecraft:gray_concrete>]
]);

for i in <tag:items:create_cities:poles/gray>.elements {
  stoneCutter.addRecipe(
    "gray_poles_" + <tag:items:create_cities:poles/gray>.elements.indexOf(i),
    i,
    <tag:items:create_cities:poles/gray>
  );
}


// Red Poles
craftingTable.addShaped("red_pole", <item:modernjapancity:red_pole> * 16, [
  [<item:minecraft:red_concrete>],
  [<tag:items:forge:ingots/zinc>],
  [<item:minecraft:red_concrete>]
]);


// Orange Poles
craftingTable.addShaped("orange_pole", <item:modernjapancity:orange_pole> * 16, [
  [<item:minecraft:orange_concrete>],
  [<tag:items:forge:ingots/zinc>],
  [<item:minecraft:orange_concrete>]
]);

<tag:items:create_cities:poles/orange>.add(
  <item:modernjapancity:orange_pole>,
  <item:modernjapancity:caution_plate>,
  <item:modernjapancity:caution_plate_oblique>
);

for i in <tag:items:create_cities:poles/orange>.elements {
  stoneCutter.addRecipe(
    "orange_poles_" + <tag:items:create_cities:poles/orange>.elements.indexOf(i),
    i,
    <tag:items:create_cities:poles/orange>
  );
}


// Curve Mirrors
craftingTable.addShaped("curve_mirror", <item:modernjapancity:curve_mirror> * 12, [
  [<tag:items:create_cities:poles/orange>, <tag:items:forge:ingots/silver>, <tag:items:forge:glass/colorless>],
  [<tag:items:create_cities:poles/orange>, <item:minecraft:air>, <item:minecraft:air>],
  [<tag:items:create_cities:poles/orange>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShapeless("curve_mirror_oblique", <item:modernjapancity:curve_mirror_oblique>, [
  <item:modernjapancity:curve_mirror>
]);
craftingTable.addShapeless("reverse_curve_mirror_oblique", <item:modernjapancity:curve_mirror>, [
  <item:modernjapancity:curve_mirror_oblique>
]);

craftingTable.addShapeless("double_curve_mirror", <item:modernjapancity:double_curve_mirror>, [
  <item:modernjapancity:curve_mirror>, <item:modernjapancity:curve_mirror>
]);
craftingTable.addShapeless("double_curve_mirror_oblique", <item:modernjapancity:double_curve_mirror_oblique>, [
  <item:modernjapancity:curve_mirror_oblique>, <item:modernjapancity:curve_mirror_oblique>
]);
craftingTable.addShapeless("conv_double_curve_mirror_oblique", <item:modernjapancity:double_curve_mirror>, [
  <item:modernjapancity:double_curve_mirror_oblique>
]);
craftingTable.addShapeless("reverse_conv_double_curve_mirror_oblique", <item:modernjapancity:double_curve_mirror_oblique>, [
  <item:modernjapancity:double_curve_mirror>
]);


// Yellow and black pole
craftingTable.addShaped("ybpole", <item:modernjapancity:yellow_and_black_pole> * 16, [
  [<item:minecraft:yellow_concrete>, <item:minecraft:black_concrete>, <item:minecraft:yellow_concrete>],
  [<item:minecraft:black_concrete>, <item:minecraft:air>, <item:minecraft:black_concrete>],
  [<item:minecraft:yellow_concrete>, <item:minecraft:air>, <item:minecraft:yellow_concrete>]
]);


// Red and white pole
craftingTable.addShaped("rwpole1", <item:modernjapancity:red_and_white_pole_1m> * 16, [
  [<item:minecraft:red_concrete>, <item:minecraft:white_concrete>, <item:minecraft:red_concrete>],
  [<item:minecraft:white_concrete>, <item:minecraft:air>, <item:minecraft:white_concrete>]
]);

craftingTable.addShaped("rwpole2", <item:modernjapancity:red_and_white_pole> * 16, [
  [<item:minecraft:red_concrete>, <item:minecraft:white_concrete>, <item:minecraft:red_concrete>],
  [<item:minecraft:white_concrete>, <item:minecraft:air>, <item:minecraft:white_concrete>],
  [<item:minecraft:red_concrete>, <item:minecraft:air>, <item:minecraft:red_concrete>]
]);


// Rubber pole
craftingTable.addShaped("rubber_pole", <item:modernjapancity:rubber_pole> * 8, [
  [<item:minecraft:air>, <item:minecraft:orange_dye>],
  [<item:minecraft:air>, <item:thermal:rubber>],
  [<item:minecraft:air>, <item:thermal:rubber>]
]);


// Signal Lights
<tag:items:create_cities:signals>.add(
  <item:modernjapancity:railroad_crossing_signal>,
  <item:modernjapancity:vehicle_signal_1>,
  <item:modernjapancity:vehicle_signal_2>,
  <item:modernjapancity:pedestrian_signal_1>,
  <item:modernjapancity:pedestrian_signal_2>,
  <item:modernjapancity:suburb_led_vehicle_signals_a>,
  <item:modernjapancity:suburb_led_vehicle_signals_b>,
  <item:modernjapancity:lightbulb_vehicle_signal>,
  <item:modernjapancity:lightbulb_vehicle_signal_b>,
  <item:modernjapancity:suburb_led_pedestrian_singal>,
  <item:modernjapancity:suburb_led_pedestrian_signal_b>,
  <item:modernjapancity:lightbulb_pedestrian_singal>,
  <item:modernjapancity:lightbulb_pedestrian_signal_b>
);

craftingTable.addShapeless("signal", <item:modernjapancity:vehicle_signal_1> * 4, [
  <tag:items:create_cities:glowstone_dusts>, <item:minecraft:white_concrete>, <tag:items:forge:dyes/red>, <tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/green>, 
]);

for i in <tag:items:create_cities:signals>.elements {
  stoneCutter.addRecipe(
    "signals_" + <tag:items:create_cities:signals>.elements.indexOf(i),
    i,
    <tag:items:create_cities:signals>
  );
}


// Ads
bulkAddItemsToTag(<tag:items:create_cities:posters>, ["advertisement_", "advertising_", "store_sign", "store_sticker_"]);

<tag:items:create_cities:posters>.add(
  <item:minecraft:painting>,
  <item:modernjapancity:poster_nosmoking>,
  <item:modernjapancity:poster_securitycamera>
);

for i in <tag:items:create_cities:posters>.elements {
  stoneCutter.addRecipe(
    "posters_" + <tag:items:create_cities:posters>.elements.indexOf(i),
    i,
    <tag:items:create_cities:posters>
  );
}


// Road guide signs
<tag:items:create_cities:signs/road_guide>.add(
  <item:modernjapancity:road_guide_sign_base>,
  <item:modernjapancity:road_guide_sign_106>,
  <item:modernjapancity:road_guide_sign_108_b_1>,
  <item:modernjapancity:road_guide_sign_108_b_2>,
  <item:modernjapancity:road_guide_sign_108_b_3>,
  <item:modernjapancity:road_guide_signs_balustrade>
);

craftingTable.addShapeless("road_guide_sign", <item:modernjapancity:road_guide_sign_base> * 2, [
  <tag:items:forge:plates/zinc>, <tag:items:forge:plates/zinc>, <tag:items:forge:plates/zinc>, <tag:items:forge:plates/zinc>, <tag:items:forge:dyes/blue>
]);

for i in <tag:items:create_cities:signs/road_guide>.elements {
  stoneCutter.addRecipe(
    "road_guide_sign_" + <tag:items:create_cities:signs/road_guide>.elements.indexOf(i),
    i,
    <tag:items:create_cities:signs/road_guide>
  );
}


// Road signs
bulkAddItemsToTag(<tag:items:create_cities:signs/road>, ["road_sign_"]);
bulkAddItemsToTag(<tag:items:create_cities:signs/road/large>, ["landmark_sign", "intersection_name_sign_", "toll_booth_electric_sign_", "sleeve_sign_"]);

<tag:items:create_cities:signs/road>.add(
  <item:modernjapancity:fire_hydrant_sign>
);

<tag:items:create_cities:signs/road/large>.add(
  <item:modernjapancity:bus_stop>,
  <item:modernjapancity:coin_operated_parking_sign>,
  <item:modernjapancity:outdoor_facility_information_sign>
);

for i in <tag:items:create_cities:signs/road>.elements {
  stoneCutter.addRecipe(
    "road_sign_" + <tag:items:create_cities:signs/road>.elements.indexOf(i),
    i,
    <tag:items:forge:plates/zinc>
  );
}

for i in <tag:items:create_cities:signs/road/large>.elements {
  stoneCutter.addRecipe(
    "large_road_sign_" + <tag:items:create_cities:signs/road/large>.elements.indexOf(i),
    i as IItemStack * 8,
    <tag:items:forge:storage_blocks/zinc>
  );
}

for i in <tag:items:create_cities:signs/road>.elements {
  stoneCutter.addRecipe(
    "conv_road_sign_" + <tag:items:create_cities:signs/road>.elements.indexOf(i),
    i,
    <tag:items:create_cities:signs/road>
  );
}

for i in <tag:items:create_cities:signs/road/large>.elements {
  stoneCutter.addRecipe(
    "conv_large_road_sign_" + <tag:items:create_cities:signs/road/large>.elements.indexOf(i),
    i,
    <tag:items:create_cities:signs/road/large>
  );
}


// Hanging signs
<tag:items:create_cities:hanging_signs>.add(
  <item:modernjapancity:store_signs_financing>
);

for i in <tag:items:create_cities:hanging_signs>.elements {
  stoneCutter.addRecipe(
    "hanging_signs_" + <tag:items:create_cities:hanging_signs>.elements.indexOf(i),
    i,
    <tag:items:create_cities:hanging_signs>
  );
}


// Narrow gauge
craftingTable.addShapeless("mjc_rail", <item:modernjapancity:narrow_gauge>, [<item:mtr:rail>]);

// LED departure sign
craftingTable.addShapeless(
  "mjc_pids_led",
  <item:modernjapancity:led_departure_sign>,
  [<tag:items:create_cities:mtr_pids>, <tag:items:forge:dyes/black>]
);

// Platform blocks
craftingTable.addShapeless(
  "mjc_platform",
  <item:modernjapancity:platform_block> * 4,
  [<item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>, <item:supplementaries:stone_tile>]
);
craftingTable.addShapeless(
  "mjc_platform_base",
  <item:modernjapancity:platform_block_base> * 4,
  [<item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>]
);

// Rail fare charts
craftingTable.addShapeless(
  "mjc_fare",
  <item:modernjapancity:rail_fare_chart_1>,
  [<tag:items:forge:ingots/zinc>, <tag:items:forge:dyes/white>, <tag:items:create_cities:glowstone_dusts>]
);
craftingTable.addShapeless(
  "mjc_fare2",
  <item:modernjapancity:rail_fare_chart_2>,
  [<item:modernjapancity:rail_fare_chart_1>]
);
craftingTable.addShapeless(
  "mjc_fare_reverse",
  <item:modernjapancity:rail_fare_chart_1>,
  [<item:modernjapancity:rail_fare_chart_2>]
);

// Guide bell device
craftingTable.addShapeless(
  "mjc_guide_bell",
  <item:modernjapancity:guide_bell_block>,
  [<item:supplementaries:speaker_block>]
);


// Road signs
bulkAddItemsToTag(<tag:items:create_cities:signs/station_information>, ["station_information_sign_"]);

<tag:items:create_cities:signs/station_information>.add(
  <item:mtr:railway_sign_2_even>,
  <item:modernjapancity:proximity_indicator>
);

for i in <tag:items:create_cities:signs/station_information>.elements {
  stoneCutter.addRecipe(
    "station_informatin_sign_" + <tag:items:create_cities:signs/station_information>.elements.indexOf(i),
    i,
    <tag:items:create_cities:signs/station_information>
  );
}


// Bench
craftingTable.addShaped("mjc_station_bench", <item:modernjapancity:station_bench> * 2, [
  [<tag:items:forge:plates/zinc>, <item:minecraft:air>, <item:minecraft:air>],
  [<tag:items:forge:plates/zinc>, <tag:items:forge:plates/zinc>, <tag:items:forge:plates/zinc>],
  [<tag:items:forge:plates/zinc>, <item:minecraft:air>, <tag:items:forge:plates/zinc>]
]);

// Embankment
craftingTable.addShaped("mjc_embankment", <item:modernjapancity:railway_embankment> * 2, [
  [<item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>, <item:minecraft:air>],
  [<item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>],
  [<item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>, <item:minecraft:gray_concrete>]
]);

// Ticket barrier
craftingTable.addShapeless(
  "mjc_ticket_barrier",
  <item:modernjapancity:ticket_barrier>,
  [<item:mtr:ticket_barrier_entrance_1>, <item:mtr:ticket_barrier_entrance_1>]
);

// Point motors
craftingTable.addShaped("mjc_point_motor_right", <item:modernjapancity:point_motor_right> * 2, [
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
  [<item:minecraft:air>, <item:minecraft:lever>, <item:minecraft:iron_ingot>],
  [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("mjc_point_motor_left", <item:modernjapancity:point_motor_left> * 2, [
  [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
  [<item:minecraft:iron_ingot>, <item:minecraft:lever>, <item:minecraft:air>],
  [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
]);

// Home door wall (include colored variant)
craftingTable.addShapeless(
  "mjc_home_door_wall",
  <item:modernjapancity:home_door_wall>,
  [<item:mtr:apg_glass>, <item:mtr:apg_glass>]
);

var colors = ["red", "orange", "yellow", "lime", "green", "cyan", "light_blue", "blue", "purple", "pink", "magenta", "brown", "white", "light_gray", "gray", "black"];
for i in colors {
  craftingTable.addShapeless(
    "mjc_home_door_wall_" + i,  
    <item:modernjapancity:home_door_wall_${i}>,
    [<item:modernjapancity:home_door_wall>, <tagmanager:items>.tag("forge:dyes/" + i)]
  );
}

// Home door gate
craftingTable.addShaped("mjc_platform_door_right", <item:modernjapancity:platform_door_right> * 2, [
  [<item:mtr:apg_door>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:mtr:apg_door>]
]);
craftingTable.addShaped("mjc_platform_door_left", <item:modernjapancity:platform_door_left> * 2, [
  [<item:minecraft:air>, <item:mtr:apg_door>],
  [<item:mtr:apg_door>, <item:minecraft:air>]
]);

// Ticket machine, Fare adjustment machine
craftingTable.addShapeless(
  "mjc_ticket_machine",
  <item:modernjapancity:ticket_machine>,
  [<item:mtr:ticket_machine>, <item:minecraft:paper>]
);
craftingTable.addShapeless(
  "mjc_fare_adjustment_machine",
  <item:modernjapancity:ticket_machine_adjustment>,
  [<item:modernjapancity:ticket_machine>, <item:minecraft:paper>]
);

// Railroad crossing signal and gate
craftingTable.addShaped("mjc_crossing_signal", <item:modernjapancity:railroad_crossing_signal> * 2, [
  [<item:minecraft:black_concrete>],
  [<item:minecraft:yellow_concrete>],
  [<item:supplementaries:speaker_block>]
]);
craftingTable.addShaped("mjc_crossing_gate", <item:modernjapancity:railway_crossing_gate> * 2, [
  [<item:create_new_age:basic_motor>, <item:minecraft:black_concrete>, <item:minecraft:yellow_concrete>]
]);

// Emergency exit light
craftingTable.addShapeless(
  "mjc_emergency_exit",
  <item:modernjapancity:emergency_exit_light_green>,
  [<tag:items:create_cities:glowstone_dusts>, <item:minecraft:quartz_slab>, <tag:items:forge:dyes/green>]
);

<tag:items:create_cities:signs/exit>.add(
  <item:modernjapancity:emergency_exit_light_green>,
  <item:modernjapancity:emergency_exit_light_white>
);
for i in <tag:items:create_cities:signs/exit>.elements {
  stoneCutter.addRecipe(
    "mjc_exit_signs" + <tag:items:create_cities:signs/exit>.elements.indexOf(i),
    i,
    <tag:items:create_cities:signs/exit>
  );
}

craftingTable.addShapeless(
  "mjc_tunnel_emergency_exit",
  <item:modernjapancity:tunnel_emergency_exit_guide_light>,
  [<tag:items:create_cities:signs/exit>, <tag:items:create_cities:signs/exit>]
);


// Old concrete and asphalt

furnace.addRecipe(
  "mjc_old_concrete",
  <item:modernjapancity:old_concrete>, <item:minecraft:light_gray_concrete>, 1.0, 30
);

stoneCutter.addRecipe(
  "mjc_concrete_arch",
  <item:modernjapancity:concrete_arch>,
  <item:modernjapancity:old_concrete>
);

craftingTable.addShapeless(
  "mjc_concrete_arch_light",
  <item:modernjapancity:concrete_arch_light>,
  [<item:modernjapancity:fluorescent_light_1>, <item:modernjapancity:concrete_arch>]
);

furnace.addRecipe(
  "mjc_asphalt",
  <item:modernjapancity:asphalt>, <item:minecraft:gray_concrete>, 1.0, 30
);

furnace.addRecipe(
  "mjc_old_asphalt",
  <item:modernjapancity:old_asphalt>, <item:modernjapancity:asphalt>, 1.0, 30
);

var asphalt_colors = ["red", "blue", "green"];
for i in asphalt_colors {
  <tag:items:create_cities:asphalt_blocks>.add(<item:modernjapancity:${i}_asphalt>);
  craftingTable.addShaped(
    "mjc_asphalt_" + i,
    <item:modernjapancity:${i}_asphalt>,
    [
      [<item:modernjapancity:asphalt>, <item:modernjapancity:asphalt>, <item:modernjapancity:asphalt>],
      [<item:modernjapancity:asphalt>, <tagmanager:items>.tag("forge:dyes/" + i), <item:modernjapancity:asphalt>],
      [<item:modernjapancity:asphalt>, <item:modernjapancity:asphalt>, <item:modernjapancity:asphalt>]
    ]
  );
}
<tag:items:create_cities:asphalt_blocks>.add(<item:modernjapancity:asphalt>, <item:modernjapancity:old_asphalt>);


for i in <tag:items:create_cities:asphalt_blocks>.elements {
  craftingTable.addShaped(
    "mjc_asphalt_" + i.registryName.path,
    <item:${i.registryName.toString()}_slab> * 6,
    [
      [i as IItemStack, i as IItemStack, i as IItemStack]
    ]
  );
  stoneCutter.addRecipe(
    "mjc_asphalt_stonecutting_" + i.registryName.path,
    <item:${i.registryName.toString()}_slab> * 2,
    i as IItemStack
  );
}


// CurbStone

craftingTable.addShaped(
  "mjc_curbstone",
  <item:modernjapancity:curbstone> * 4,
  [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:stone_bricks>],
    [<item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>]
  ]
);


// Bracelets and Wires

craftingTable.addShaped(
  "mjc_bracelet_insulator",
  <item:modernjapancity:bracelet_insulator> * 2,
  [
    [<item:create_new_age:electrical_connector>, <item:minecraft:air>, <item:create_new_age:electrical_connector>],
    [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>],
    [<item:minecraft:iron_bars>, <item:minecraft:air>, <item:minecraft:iron_bars>]
  ]
);

craftingTable.addShaped(
  "mjc_bracelet_insulator2",
  <item:modernjapancity:bracelet_insulator> * 2,
  [
    [<item:createaddition:connector>, <item:minecraft:air>, <item:createaddition:connector>],
    [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>],
    [<item:minecraft:iron_bars>, <item:minecraft:air>, <item:minecraft:iron_bars>]
  ]
);

craftingTable.addShaped(
  "mjc_bracelet",
  <item:modernjapancity:bracelet> * 2,
  [
    [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>],
    [<item:minecraft:iron_bars>, <item:minecraft:air>, <item:minecraft:iron_bars>]
  ]
);

craftingTable.addShaped(
  "mjc_bracelet_parts",
  <item:modernjapancity:bracelet_parts> * 2,
  [
    [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>],
    [<item:minecraft:iron_bars>, <item:minecraft:air>]
  ]
);

craftingTable.addShapeless(
  "mjc_wire",
  <item:modernjapancity:wire>,
  [<item:createaddition:copper_wire>]
);


// Acoustic signal speaker

craftingTable.addShapeless(
  "mjc_signal_speaker",
  <item:modernjapancity:signal_speaker>,
  [<item:supplementaries:speaker_block>, <item:minecraft:iron_bars>]
);


// Postbox

craftingTable.addShaped(
  "mjc_postbox",
  <item:modernjapancity:postbox> * 2,
  [
    [<item:minecraft:red_concrete>, <item:minecraft:red_concrete>, <item:minecraft:red_concrete>],
    [<item:minecraft:red_concrete>, <tag:items:create:postboxes>, <item:minecraft:red_concrete>],
    [<item:minecraft:red_concrete>, <item:minecraft:red_concrete>, <item:minecraft:red_concrete>]
  ]
);


// Fire alarm box

craftingTable.addShapeless(
  "mjc_fire_alarm_box",
  <item:modernjapancity:fire_alarm_box>,
  [<item:mekanism:industrial_alarm>, <item:minecraft:white_concrete>]
);

craftingTable.addShapeless(
  "mjc_fire_alarm_box2",
  <item:modernjapancity:fire_alarm_box>,
  [<item:securitycraft:alarm>, <item:minecraft:white_concrete>]
);


// Fire extinguisher box

craftingTable.addShapeless(
  "mjc_fire_extinguisher_box",
  <item:modernjapancity:fire_extinguisher_box>,
  [<item:mekanism:basic_chemical_tank>, <item:minecraft:red_concrete>]
);


// Concrete stair

craftingTable.addShaped(
  "mjc_concrete_staircase",
  <item:modernjapancity:concrete_staircase> * 4,
  [
    [<item:modernjapancity:old_concrete>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:modernjapancity:old_concrete>, <item:modernjapancity:old_concrete>, <item:minecraft:air>],
    [<item:modernjapancity:old_concrete>, <item:modernjapancity:old_concrete>, <item:modernjapancity:old_concrete>]
  ]
);

stoneCutter.addRecipe(
  "mjc_concrete_staircase_stonecutting",
  <item:modernjapancity:concrete_staircase>,
  <item:modernjapancity:old_concrete>
);


// Tiles

furnace.addRecipe(
  "mjc_tile_block_1",
  <item:modernjapancity:tile_block_1>, <item:minecraft:terracotta>, 1.0, 30
);

var mjc_base_tile = <item:modernjapancity:tile_block_1>;

craftingTable.addShaped(
  "mjc_tile_block_gray",
  <item:modernjapancity:tile_block_2> * 8,
  [
    [mjc_base_tile, mjc_base_tile, mjc_base_tile],
    [mjc_base_tile, <tag:items:forge:dyes/gray> ,mjc_base_tile],
    [mjc_base_tile, mjc_base_tile, mjc_base_tile]
  ]
);

craftingTable.addShaped(
  "mjc_tile_block_black",
  <item:modernjapancity:tile_block_3> * 8,
  [
    [mjc_base_tile, mjc_base_tile, mjc_base_tile],
    [mjc_base_tile, <tag:items:forge:dyes/black> ,mjc_base_tile],
    [mjc_base_tile, mjc_base_tile, mjc_base_tile]
  ]
);

craftingTable.addShaped(
  "mjc_tile_block_black_and_white",
  <item:modernjapancity:tile_block_4> * 8,
  [
    [<item:modernjapancity:tile_block_1>, <item:modernjapancity:tile_block_1>, <item:modernjapancity:tile_block_1>],
    [<item:modernjapancity:tile_block_1>, <item:minecraft:air>, <item:modernjapancity:tile_block_3>],
    [<item:modernjapancity:tile_block_3>, <item:modernjapancity:tile_block_3>, <item:modernjapancity:tile_block_3>]
  ]
);

craftingTable.addShaped(
  "mjc_tile_block_white_and_yellow",
  <item:modernjapancity:tile_block_5> * 8,
  [
    [<item:modernjapancity:tile_block_1>, <item:modernjapancity:tile_block_1>, <item:modernjapancity:tile_block_1>],
    [<item:modernjapancity:tile_block_1>, <tag:items:forge:dyes/yellow> ,<item:modernjapancity:tile_block_1>],
    [<item:modernjapancity:tile_block_1>, <item:modernjapancity:tile_block_1>, <item:modernjapancity:tile_block_1>]
  ]
);

craftingTable.addShaped(
  "mjc_tile_white",
  <item:modernjapancity:tile_white> * 4,
  [
    [mjc_base_tile, mjc_base_tile],
    [mjc_base_tile, mjc_base_tile]
  ]
);

craftingTable.addShaped(
  "mjc_white_pixel_tile",
  <item:modernjapancity:white_pixel_tile> * 9,
  [
    [mjc_base_tile, mjc_base_tile, mjc_base_tile],
    [mjc_base_tile, mjc_base_tile, mjc_base_tile],
    [mjc_base_tile, mjc_base_tile, mjc_base_tile]
  ]
);

<tag:items:create_cities:tiles/white>.add(
  mjc_base_tile,
  <item:modernjapancity:tile_white>,
  <item:modernjapancity:modern_tile_white>,
  <item:modernjapancity:old_modern_tile_white>,
  <item:modernjapancity:brick_tile_2>,
  <item:modernjapancity:border_tile_white>,
  <item:modernjapancity:white_pixel_tile>
);

for i in <tag:items:create_cities:tiles/white>.elements {
  stoneCutter.addRecipe(
    "mjc_white_tiles" + <tag:items:create_cities:tiles/white>.elements.indexOf(i),
    i,
    <tag:items:create_cities:tiles/white>
  );
}

<tag:items:create_cities:tiles/yellow>.add(
  <item:modernjapancity:tile_yellow>,
  <item:modernjapancity:modern_tile_yellow>,
  <item:modernjapancity:old_modern_tile_yellow>,
  <item:modernjapancity:brick_tile_3>,
  <item:modernjapancity:border_tile_yellow>,
  <item:modernjapancity:yellow_pixel_tile>
);

for i in <tag:items:create_cities:tiles/yellow>.elements {
  stoneCutter.addRecipe(
    "mjc_yellow_tiles" + <tag:items:create_cities:tiles/yellow>.elements.indexOf(i),
    i,
    <tag:items:create_cities:tiles/yellow>
  );
}

<tag:items:create_cities:tiles/orange>.add(
  <item:modernjapancity:tile_orange>,
  <item:modernjapancity:modern_tile_orange>,
  <item:modernjapancity:old_modern_tile_orange>,
  <item:modernjapancity:brick_tile_1>,
  <item:modernjapancity:border_tile_orange>,
  <item:modernjapancity:orange_pixel_tile>
);

for i in <tag:items:create_cities:tiles/orange>.elements {
  stoneCutter.addRecipe(
    "mjc_orange_tiles" + <tag:items:create_cities:tiles/orange>.elements.indexOf(i),
    i,
    <tag:items:create_cities:tiles/orange>
  );
}

<tag:items:create_cities:tiles/gray>.add(
  <item:modernjapancity:tile_block_2>,
  <item:modernjapancity:tile_wall>
);

for i in <tag:items:create_cities:tiles/gray>.elements {
  stoneCutter.addRecipe(
    "mjc_gray_tiles" + <tag:items:create_cities:tiles/gray>.elements.indexOf(i),
    i,
    <tag:items:create_cities:tiles/gray>
  );
}

<tag:items:create_cities:tiles/blue>.add(
  <item:modernjapancity:border_tile_blue>,
  <item:modernjapancity:blue_pixel_tile>
);

for i in <tag:items:create_cities:tiles/blue>.elements {
  stoneCutter.addRecipe(
    "mjc_blue_tiles" + <tag:items:create_cities:tiles/blue>.elements.indexOf(i),
    i,
    <tag:items:create_cities:tiles/blue>
  );
}

craftingTable.addShaped(
  "mjc_red_pixel_tile",
  <item:modernjapancity:red_pixel_tile> * 8,
  [
    [<item:modernjapancity:white_pixel_tile>, <item:modernjapancity:white_pixel_tile>, <item:modernjapancity:white_pixel_tile>],
    [<item:modernjapancity:white_pixel_tile>, <tag:items:forge:dyes/red> ,<item:modernjapancity:white_pixel_tile>],
    [<item:modernjapancity:white_pixel_tile>, <item:modernjapancity:white_pixel_tile>, <item:modernjapancity:white_pixel_tile>]
  ]
);

craftingTable.addShaped(
  "mjc_blue_pixel_tile",
  <item:modernjapancity:blue_pixel_tile> * 8,
  [
    [<item:modernjapancity:white_pixel_tile>, <item:modernjapancity:white_pixel_tile>, <item:modernjapancity:white_pixel_tile>],
    [<item:modernjapancity:white_pixel_tile>, <tag:items:forge:dyes/blue> ,<item:modernjapancity:white_pixel_tile>],
    [<item:modernjapancity:white_pixel_tile>, <item:modernjapancity:white_pixel_tile>, <item:modernjapancity:white_pixel_tile>]
  ]
);

craftingTable.addShaped(
  "mjc_blue_border_tile",
  <item:modernjapancity:border_tile_blue> * 8,
  [
    [<item:modernjapancity:border_tile_white>, <item:modernjapancity:border_tile_white>, <item:modernjapancity:border_tile_white>],
    [<item:modernjapancity:border_tile_white>, <tag:items:forge:dyes/blue> ,<item:modernjapancity:border_tile_white>],
    [<item:modernjapancity:border_tile_white>, <item:modernjapancity:border_tile_white>, <item:modernjapancity:border_tile_white>]
  ]
);


// Beams, Guardrails, and Guard Pipes

craftingTable.addShaped(
  "mjc_basic_guardrails",
  <item:modernjapancity:guardrail_middle_pole> * 6,
  [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_bars> ,<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_bars>, <item:minecraft:iron_ingot>]
  ]
);

<tag:items:create_cities:barriers/small>.add(
  <item:modernjapancity:guardrail_end_left>,
  <item:modernjapancity:guardrail_middle_pole>,
  <item:modernjapancity:guardrail_middle>,
  <item:modernjapancity:guardrail_end_right>,
  <item:modernjapancity:box_beam>,
  <item:modernjapancity:stainless_steel_car_stop>,
  <item:modernjapancity:guard_pipe_end>,
  <item:modernjapancity:guard_pipe_middle>
);

for i in <tag:items:create_cities:barriers/small>.elements {
  stoneCutter.addRecipe(
    "mjc_small_barriers" + <tag:items:create_cities:barriers/small>.elements.indexOf(i),
    i,
    <tag:items:create_cities:barriers/small>
  );
}


craftingTable.addShaped(
  "mjc_large_guardrails",
  <item:modernjapancity:wire_fence> * 4,
  [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_bars> ,<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_bars> ,<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_bars>, <item:minecraft:iron_ingot>]
  ]
);

<tag:items:create_cities:barriers/large>.add(
  <item:modernjapancity:guard_fence_orange>,
  <item:modernjapancity:guard_fence_green>,
  <item:modernjapancity:wire_fence>
);

for i in <tag:items:create_cities:barriers/large>.elements {
  stoneCutter.addRecipe(
    "mjc_large_barriers" + <tag:items:create_cities:barriers/large>.elements.indexOf(i),
    i,
    <tag:items:create_cities:barriers/large>
  );
}


craftingTable.addShapeless(
  "mjc_display_construction",
  <item:modernjapancity:electric_display_board_for_construction>,
  [
    <tag:items:create_cities:barriers/large>, <item:minecraft:gray_concrete>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>
  ]
);


craftingTable.addShaped(
  "mjc_mesh_gate",
  <item:modernjapancity:mesh_gate> * 4,
  [
    [<item:minecraft:iron_bars>, <item:minecraft:air> ,<item:minecraft:iron_bars>],
    [<item:minecraft:air>, <item:minecraft:iron_bars> ,<item:minecraft:air>],
    [<item:minecraft:iron_bars>, <item:minecraft:air>, <item:minecraft:iron_bars>]
  ]
);


craftingTable.addShaped(
  "mjc_steel_fence",
  <item:modernjapancity:stainless_steel_fence> * 6,
  [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_bars>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_bars>, <item:minecraft:iron_ingot>]
  ]
);

craftingTable.addShaped(
  "mjc_glass_fence",
  <item:modernjapancity:glass_fence> * 6,
  [
    [<item:minecraft:iron_ingot>, <tag:items:forge:glass_panes>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <tag:items:forge:glass_panes>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <tag:items:forge:glass_panes>, <item:minecraft:iron_ingot>]
  ]
);


// Braille Blocks
craftingTable.addShaped(
  "mjc_braille_block_caution_4",
  <item:modernjapancity:braille_block_caution_4> * 4,
  [
    [<item:minecraft:yellow_concrete>, <item:minecraft:yellow_concrete>],
  ]
);

<tag:items:create_cities:braille_blocks/2>.add(
  <item:modernjapancity:braille_block_induction>,
  <item:modernjapancity:braille_block_caution>,
  <item:modernjapancity:point_block_with_inner_line>
);

for i in <tag:items:create_cities:braille_blocks/2>.elements {
  stoneCutter.addRecipe(
    "mjc_braille" + <tag:items:create_cities:braille_blocks/2>.elements.indexOf(i),
    i,
    <tag:items:create_cities:braille_blocks/2>
  );
  stoneCutter.addRecipe(
    "mjc_braille_to_half" + <tag:items:create_cities:braille_blocks/2>.elements.indexOf(i),
    i as IItemStack * 2,
    <item:modernjapancity:braille_block_caution_4>
  );
}


// Arrow Guidance Signs

stoneCutter.addRecipe(
  "mjc_arrow_guide_white",
  <item:modernjapancity:arrow_block_white>,
  <tag:items:forge:plates/iron>
);
stoneCutter.addRecipe(
  "mjc_arrow_guide_black",
  <item:modernjapancity:arrow_block_black>,
  <tag:items:forge:plates/iron>
);


// Trash Cans

stoneCutter.addRecipe(
  "mjc_trash_can",
  <item:modernjapancity:trash_can_1>,
  <item:mtr:rubbish_bin_1>
);


// Vending Machines

craftingTable.addShapeless(
  "mjc_vending_machine_white",
  <item:modernjapancity:vending_machine_white>,
  [<item:minecraft:iron_block>, <item:mekanism:basic_control_circuit>, <tag:items:create_cities:glowstone_dusts>]
);
craftingTable.addShapeless(
  "mjc_vending_machine_red",
  <item:modernjapancity:vending_machine_red>,
  [<item:modernjapancity:vending_machine_white>, <tag:items:forge:dyes/red>]
);
craftingTable.addShapeless(
  "mjc_vending_machine_blue",
  <item:modernjapancity:vending_machine_blue>,
  [<item:modernjapancity:vending_machine_white>, <tag:items:forge:dyes/blue>]
);
craftingTable.addShapeless(
  "mjc_vending_machine_yellow",
  <item:modernjapancity:vending_machine_yellow>,
  [<item:modernjapancity:vending_machine_white>, <tag:items:forge:dyes/yellow>]
);


// Wall Lights

craftingTable.addShaped(
  "mjc_wall_lights",
  <item:modernjapancity:wall_light_square> * 2,
  [
    [<item:minecraft:iron_ingot>, <item:neoncraft:neon_tube>]
  ]
);

craftingTable.addShaped(
  "mjc_cylindrical_wall_light",
  <item:modernjapancity:cylindrical_wall_light> * 2,
  [
    [<item:minecraft:iron_ingot>, <item:neoncraft:neon_tube>],
    [<item:minecraft:iron_ingot>, <item:neoncraft:neon_tube>]
  ]
);


// Street Light

craftingTable.addShaped(
  "mjc_street_light",
  <item:modernjapancity:street_light>,
  [
    [<item:minecraft:iron_ingot>, <item:neoncraft:neon_tube>],
    [<item:minecraft:iron_ingot>, <item:minecraft:air>]
  ]
);

craftingTable.addShaped(
  "mjc_twin_headed_street_light",
  <item:modernjapancity:twin_headed_street_light>,
  [
    [<item:neoncraft:neon_tube>, <item:minecraft:iron_ingot>, <item:neoncraft:neon_tube>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
  ]
);


// Fluorescent Light

craftingTable.addShaped(
  "mjc_fluorescent_light",
  <item:modernjapancity:fluorescent_light_1> * 32,
  [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:neoncraft:neon_tube>, <item:neoncraft:neon_tube>, <item:neoncraft:neon_tube>]
  ]
);


// Pylon and Corn Bar and A Barricade

craftingTable.addShaped(
  "mjc_pylon",
  <item:modernjapancity:pylon> * 8,
  [
    [<item:minecraft:air>, <item:minecraft:red_concrete>, <item:minecraft:air>],
    [<item:minecraft:red_concrete>, <item:minecraft:white_concrete>, <item:minecraft:red_concrete>]
  ]
);

craftingTable.addShaped(
  "mjc_corn_bar",
  <item:modernjapancity:corn_bar> * 8,
  [
    [<item:minecraft:black_concrete>, <item:minecraft:yellow_concrete>, <item:minecraft:black_concrete>]
  ]
);

craftingTable.addShaped(
  "mjc_a_barricade",
  <item:modernjapancity:type_a_barricade> * 4,
  [
    [<item:minecraft:orange_concrete>, <item:minecraft:orange_concrete>, <item:minecraft:orange_concrete>],
    [<item:minecraft:orange_concrete>, <item:minecraft:air>, <item:minecraft:orange_concrete>]
  ]
);


// Obstacle Light

craftingTable.addShaped(
  "mjc_obstacle_light",
  <item:modernjapancity:obstacle_light> * 3,
  [
    [<item:minecraft:yellow_concrete>, <item:minecraft:redstone_lamp>],
    [<item:minecraft:yellow_concrete>, <item:minecraft:redstone_lamp>]
  ]
);


// Office Desk and Chair

craftingTable.addShaped(
  "mjc_office_desk",
  <item:modernjapancity:office_desk> * 2,
  [
    [<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_nugget>, <item:minecraft:iron_ingot>]
  ]
);

craftingTable.addShaped(
  "mjc_office_chair",
  <item:modernjapancity:office_chair>,
  [
    [<item:modernjapancity:station_bench>, <item:minecraft:air>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]
  ]
);


// Entrance Exit LED
// TODO: Right click with brush converts the display

craftingTable.addShaped(
  "mjc_exit_led",
  <item:modernjapancity:entrance_exit_led_display_arrow> * 2,
  [
    [<tag:items:create_cities:glowstone_dusts>],
    [<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>]
  ]
);

craftingTable.addShapeless(
  "conv_mjc_exit_led",
  <item:modernjapancity:entrance_exit_led_display_noentry>,
  [<item:modernjapancity:entrance_exit_led_display_arrow>]
);

craftingTable.addShapeless(
  "rev_conv_mjc_exit_led",
  <item:modernjapancity:entrance_exit_led_display_arrow>,
  [<item:modernjapancity:entrance_exit_led_display_noentry>]
);


// Ceiling Boards

stoneCutter.addRecipe(
  "mjc_ceiling_boards",
  <item:modernjapancity:ceiling_boards>,
  <item:minecraft:iron_block>
);

stoneCutter.addRecipe(
  "mjc_ceiling_boards_vertical",
  <item:modernjapancity:slanted_ceiling_vertical>,
  <item:minecraft:iron_block>
);

stoneCutter.addRecipe(
  "mjc_ceiling_boards_horizontal",
  <item:modernjapancity:slanted_ceiling_parallel>,
  <item:minecraft:iron_block>
);


// Flat Panel

stoneCutter.addRecipe(
  "mjc_flat_panel",
  <item:modernjapancity:flat_panel> * 16,
  <item:minecraft:iron_block>
);


// Block Walls

<tag:items:create_cities:block_walls>.add(
  <item:modernjapancity:block_wall>,
  <item:modernjapancity:block_wall_pattern>,
  <item:modernjapancity:block_wall_top>,
  <item:modernjapancity:block_wall_top_pattern>
);

for i in <tag:items:create_cities:block_walls>.elements {
  stoneCutter.addRecipe(
    "mjc_block_walls" + <tag:items:create_cities:block_walls>.elements.indexOf(i),
    i,
    <tag:items:create_cities:block_walls>
  );
  stoneCutter.addRecipe(
    "mjc_block_walls_from_smooth_stone_slab" + <tag:items:create_cities:block_walls>.elements.indexOf(i),
    i,
    <item:minecraft:smooth_stone_slab>
  );
}


// Public and Emergency Telephone and their Stands

craftingTable.addShapeless(
  "mjc_public_telephone",
  <item:modernjapancity:public_telephone>,
  [<item:minecraft:iron_block>, <tag:items:forge:dyes/green>, <item:mekanismadditions:walkie_talkie>]
);

craftingTable.addShapeless(
  "mjc_emergency_telephone",
  <item:modernjapancity:emergency_phone>,
  [<item:minecraft:iron_block>, <tag:items:forge:dyes/yellow>, <item:mekanismadditions:walkie_talkie>]
);

craftingTable.addShaped(
  "mjc_telephone_booth",
  <item:modernjapancity:public_telephone_booth>,
  [
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>],
    [<item:minecraft:air>, <tag:items:forge:ingots/iron>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <tag:items:forge:ingots/iron>, <item:minecraft:iron_ingot>]
  ]
);

craftingTable.addShapeless(
  "mjc_telephone_cabinet",
  <item:modernjapancity:public_telephone_cabinet>,
  [
    <item:modernjapancity:public_telephone_booth>, <item:securitycraft:keypad_frame>
  ]
);


// Smart Light

craftingTable.addShaped(
  "mjc_smart_light",
  <item:modernjapancity:smart_light> * 2,
  [
    [<item:minecraft:iron_ingot>],
    [<item:minecraft:lantern>],
    [<item:minecraft:iron_ingot>]
  ]
);

craftingTable.addShaped(
  "mjc_smart_light_brace",
  <item:modernjapancity:smart_light_brace> * 24,
  [
    [<item:minecraft:iron_block>],
    [<item:minecraft:iron_block>],
    [<item:minecraft:iron_block>]
  ]
);


craftingTable.addShaped(
  "mjc_rubber_pole",
  <item:modernjapancity:rubber_pole> * 16,
  [
    [<item:modernjapancity:pylon>],
    [<item:modernjapancity:pylon>]
  ]
);


// Security Camera

craftingTable.addShaped(
  "mjc_camera",
  <item:modernjapancity:public_security_camera> * 6,
  [
    [<item:mekanism:basic_control_circuit>],
    [<item:minecraft:redstone_block>],
    [<tag:items:forge:glass/colorless>]
  ]
);


// Register

craftingTable.addShapeless(
  "mjc_register",
  <item:modernjapancity:register>,
  [
    <item:securitycraft:keypad_frame>, <item:mekanism:basic_control_circuit>
  ]
);


// Doorbell

craftingTable.addShapeless(
  "mjc_doorbell",
  <item:modernjapancity:doorbell> * 4,
  [
    <item:supplementaries:speaker_block>, <tag:items:minecraft:buttons>
  ]
);


// Glass Windows and Doors

craftingTable.addShaped(
  "mjc_glass_window",
  <item:modernjapancity:glass_window>,
  [
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <tag:items:forge:glass_panes>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]
  ]
);

craftingTable.addShapeless(
  "mjc_glass_window_2m",
  <item:modernjapancity:glass_window_2m>,
  [
    <item:modernjapancity:glass_window>, <item:modernjapancity:glass_window>
  ]
);

craftingTable.addShapeless(
  "mjc_glass_door_left",
  <item:modernjapancity:glass_door_left>,
  [
    <tag:items:minecraft:doors>, <item:modernjapancity:glass_window_2m>
  ]
);

craftingTable.addShapeless(
  "mjc_glass_door_right",
  <item:modernjapancity:glass_door_right>,
  [
    <item:modernjapancity:glass_door_left>
  ]
);

craftingTable.addShapeless(
  "mjc_conv_glass_door_right",
  <item:modernjapancity:glass_door_left>,
  [
    <item:modernjapancity:glass_door_right>
  ]
);

craftingTable.addShapeless(
  "mjc_electric_door_left",
  <item:modernjapancity:electric_sliding_door_left>,
  [
    <item:modernjapancity:glass_door_left>, <item:minecraft:redstone>
  ]
);

craftingTable.addShapeless(
  "mjc_electric_door_right",
  <item:modernjapancity:electric_sliding_door_right>,
  [
    <item:modernjapancity:glass_door_right>, <item:minecraft:redstone>
  ]
);

craftingTable.addShapeless(
  "mjc_conv_electric_door_left",
  <item:modernjapancity:electric_sliding_door_left>,
  [
    <item:modernjapancity:electric_sliding_door_right>
  ]
);

craftingTable.addShapeless(
  "mjc_conv_electric_door_right",
  <item:modernjapancity:electric_sliding_door_right>,
  [
    <item:modernjapancity:electric_sliding_door_left>
  ]
);


// Alminium Door

craftingTable.addShapeless(
  "mjc_zinc_door",
  <item:modernjapancity:aluminum_sliding_door> * 2,
  [
    <item:createdeco:zinc_door>, <item:createdeco:zinc_door>
  ]
);


// LED Downlight

stoneCutter.addRecipe(
  "mjc_led_downlight",
  <item:modernjapancity:led_downlight> * 4,
  <tag:items:mekanismadditions:glow_panels>
);


// Shop Curtain

craftingTable.addShaped(
  "mjc_white_shop_curtain",
  <item:modernjapancity:white_shop_curtain>,
  [
    [<item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:white_carpet>, <item:minecraft:white_carpet>]
  ]
);

craftingTable.addShaped(
  "mjc_red_shop_curtain",
  <item:modernjapancity:red_shop_curtain>,
  [
    [<item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:red_carpet>, <item:minecraft:red_carpet>]
  ]
);

craftingTable.addShaped(
  "mjc_blue_shop_curtain",
  <item:modernjapancity:blue_shop_curtain>,
  [
    [<item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:blue_carpet>, <item:minecraft:blue_carpet>]
  ]
);


// Outdoor Unit

craftingTable.addShaped(
  "mjc_outdoor_unit",
  <item:modernjapancity:outdoor_unit>,
  [
    [<item:minecraft:iron_block>, <item:create:propeller>]
  ]
);

craftingTable.addShapeless(
  "mjc_wall_outdoor_unit",
  <item:modernjapancity:wall_mounted_outdoor_unit>,
  [<item:modernjapancity:outdoor_unit>]
);

craftingTable.addShapeless(
  "mjc_rev_outdoor_unit",
  <item:modernjapancity:outdoor_unit>,
  [<item:modernjapancity:wall_mounted_outdoor_unit>]
);

craftingTable.addShapeless(
  "mjc_commercial_outdoor_units",
  <item:modernjapancity:commercial_outdoor_units>,
  [<item:minecraft:iron_block>, <item:create:propeller>, <item:modernjapancity:outdoor_unit>]
);

craftingTable.addShapeless(
  "mjc_commercial_outdoor_units2",
  <item:modernjapancity:commercial_outdoor_units>,
  [<item:minecraft:iron_block>, <item:create:propeller>, <item:modernjapancity:wall_mounted_outdoor_unit>]
);


// Rectangular Vent

craftingTable.addShaped(
  "mjc_rectangular_vent",
  <item:modernjapancity:rectangular_vent_cover> * 2,
  [
    [<tag:items:forge:plates/zinc>, <tag:items:forge:plates/zinc>],
    [<item:minecraft:air>, <tag:items:forge:plates/zinc>]
  ]
);


// Bold Pillars

<tag:items:create_cities:pillars>.add(
  <item:modernjapancity:stainless_pillars>,
  <item:modernjapancity:marberon_pillar>,
  <item:modernjapancity:marberon_color_pillar>,
  <item:modernjapancity:aluminum_spandrel_pillars>
);

craftingTable.addShaped(
  "mjc_stainless_pillars",
  <item:modernjapancity:stainless_pillars> * 48,
  [
    [<tag:items:forge:storage_blocks/steel>, <item:minecraft:air>, <tag:items:forge:storage_blocks/steel>],
    [<tag:items:forge:storage_blocks/steel>, <item:minecraft:air>, <tag:items:forge:storage_blocks/steel>],
    [<tag:items:forge:storage_blocks/steel>, <item:minecraft:air>, <tag:items:forge:storage_blocks/steel>]
  ]
);

for i in <tag:items:create_cities:pillars>.elements {
  stoneCutter.addRecipe(
    "mjc_pillars" + <tag:items:create_cities:pillars>.elements.indexOf(i),
    i,
    <tag:items:create_cities:pillars>
  );
}


// Obstruction Lights

craftingTable.addShapeless(
  "mjc_obstruction_light",
  <item:modernjapancity:obstruction_light> * 2,
  [<item:minecraft:lantern>, <item:minecraft:daylight_detector>]
);

craftingTable.addShapeless(
  "mjc_conv_obstruction_light_flash_off",
  <item:modernjapancity:obstruction_light_flash_off>,
  [<item:modernjapancity:obstruction_light>]
);

craftingTable.addShapeless(
  "mjc_rev_obstruction_light",
  <item:modernjapancity:obstruction_light>,
  [<item:modernjapancity:obstruction_light_flash_off>]
);


// Balustrades

<tag:items:create_cities:balustrades>.add(
  <item:modernjapancity:balustrade_1>,
  <item:modernjapancity:balustrade_2>,
  <item:modernjapancity:balustrade_3>,
  <item:modernjapancity:balustrade_4>
);

craftingTable.addShaped(
  "mjc_balustrade",
  <item:modernjapancity:balustrade_1> * 16,
  [
    [<tag:items:minecraft:fences>, <tag:items:minecraft:fences>],
    [<tag:items:minecraft:fences>, <tag:items:minecraft:fences>],
    [<tag:items:forge:storage_blocks/iron>, <tag:items:forge:storage_blocks/iron>]
  ]
);

for i in <tag:items:create_cities:balustrades>.elements {
  stoneCutter.addRecipe(
    "mjc_balustrades" + <tag:items:create_cities:balustrades>.elements.indexOf(i),
    i,
    <tag:items:create_cities:balustrades>
  );
}


// Metal Block

<tag:items:create_cities:metals>.add(
  <item:minecraft:iron_block>,
  <item:modernjapancity:metal_block>,
  <item:mtr:metal>
);

for i in <tag:items:create_cities:metals>.elements {
  stoneCutter.addRecipe(
    "mjc_conv_metal" + <tag:items:create_cities:metals>.elements.indexOf(i),
    i,
    <tag:items:create_cities:metals>
  );
}

stoneCutter.addRecipe(
  "mjc_metal_slope",
  <item:modernjapancity:metal_curve_block> * 2,
  <tag:items:create_cities:metals>
);


// Cushion 

craftingTable.addShaped(
  "mjc_cushion",
  <item:modernjapancity:cushion_drum> * 8,
  [
    [<item:minecraft:yellow_concrete>, <item:minecraft:air>, <item:minecraft:yellow_concrete>],
    [<item:minecraft:yellow_concrete>, <item:minecraft:air>, <item:minecraft:yellow_concrete>],
    [<item:minecraft:yellow_concrete>, <item:minecraft:air>, <item:minecraft:yellow_concrete>]
  ]
);


// Jet Fan

craftingTable.addShaped(
  "mjc_jet_fan",
  <item:modernjapancity:jet_fan> * 4,
  [
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>],
    [<item:create:encased_fan>, <item:create:encased_fan>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]
  ]
);






