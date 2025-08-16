import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.mod.Mod;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;


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
  <item:modernjapancity:signal_speaker>
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
bulkAddItemsToTag(<tag:items:create_cities:signs/road>, ["road_sign_", "landmark_sign", "intersection_name_sign_"]);

/*
<tag:items:create_cities:signs/road>.add(
);
*/

for i in <tag:items:create_cities:signs/road>.elements {
  stoneCutter.addRecipe(
    "road_sign_" + <tag:items:create_cities:signs/road>.elements.indexOf(i),
    i,
    <tag:items:forge:plates/zinc>
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
  "emergency_exit",
  <item:modernjapancity:emergency_exit_light_green>,
  [<tag:items:create_cities:glowstone_dusts>, <item:minecraft:quartz_slab>, <tag:items:forge:dyes/green>]
);

<tag:items:create_cities:signs/exit>.add(
  <item:modernjapancity:emergency_exit_light_green>,
  <item:modernjapancity:emergency_exit_light_white>
);
for i in <tag:items:create_cities:signs/exit>.elements {
  stoneCutter.addRecipe(
    "exit_signs" + <tag:items:create_cities:signs/exit>.elements.indexOf(i),
    i,
    <tag:items:create_cities:signs/exit>
  );
}