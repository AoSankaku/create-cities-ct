import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.manager.ITagManager;


// White Lines and signs
<tag:items:create_cities:white_lines>.add(
  <item:modernjapancity:white_line>,
  <item:modernjapancity:white_cross_line>,
  <item:modernjapancity:white_t_line>,
  <item:modernjapancity:white_pedestrian_crossing>,
  <item:modernjapancity:stop_lines_and_white_lines>,
  <item:modernjapancity:white_line_curve>,
  <item:modernjapancity:stop_lines_and_white_lines_2>,
  <item:modernjapancity:white_rhombus>,
  <item:modernjapancity:white_bus>,
  <item:modernjapancity:white_arrow_upright>,
  <item:modernjapancity:white_arrow_upright_dotted>,
  <item:modernjapancity:white_arrow_upright_and_left>,
  <item:modernjapancity:white_arrow_upright_and_left_dotted>,
  <item:modernjapancity:white_arrow_right>,
  <item:modernjapancity:white_arrow_right_dotted>,
  <item:modernjapancity:white_arrow_left>,
  <item:modernjapancity:white_arrow_left_dotted>,
  <item:modernjapancity:road_guide_sign_name_station>,
  <item:modernjapancity:road_guide_sign_name_urbanarea>,
  <item:modernjapancity:road_guide_sign_name_tunnel>,
  <item:modernjapancity:road_guide_sign_name_nationalroute>,
  <item:modernjapancity:road_guide_sign_name_park>,
  <item:modernjapancity:road_guide_sign_name_shopping>,
  <item:modernjapancity:road_guide_sign_name_port>,
  <item:modernjapancity:road_guide_sign_name_airport>,
  <item:modernjapancity:road_guide_sign_name_prefecturaloffice_a>,
  <item:modernjapancity:road_guide_sign_name_prefecturaloffice_b>,
  <item:modernjapancity:road_guide_sign_name_prefecturaloffice_c>,
  <item:modernjapancity:road_guide_sign_name_metropolitangovernment>,
  <item:modernjapancity:road_guide_sign_name_highway>
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
  <item:minecraft:glowstone_dust>, <item:minecraft:white_concrete>, <tag:items:forge:dyes/red>, <tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/green>, 
]);

for i in <tag:items:create_cities:signals>.elements {
  stoneCutter.addRecipe(
    "signals_" + <tag:items:create_cities:signals>.elements.indexOf(i),
    i,
    <tag:items:create_cities:signals>
  );
}


// Ads
<tag:items:create_cities:posters>.add(
  <item:minecraft:painting>,
  <item:modernjapancity:advertisement_signbuild>,
  <item:modernjapancity:advertisement_sign_juku>,
  <item:modernjapancity:advertisement_sign_mourn>,
  <item:modernjapancity:advertisement_sign_coffe>,
  <item:modernjapancity:advertisement_sign_cutsalon>,
  <item:modernjapancity:advertisement_sign_houseapp>,
  <item:modernjapancity:advertising_sign_oil>,
  <item:modernjapancity:advertisement_sign_clinic>,
  <item:modernjapancity:advertisement_sign_financing>,
  <item:modernjapancity:advertisement_sign_lent>,
  <item:modernjapancity:advertising_poster_fire>,
  <item:modernjapancity:advertising_poster_dash>,
  <item:modernjapancity:poster_nosmoking>,
  <item:modernjapancity:poster_securitycamera>,
  <item:modernjapancity:store_sticker_1>,
  <item:modernjapancity:store_sticker_2>,
  <item:modernjapancity:store_sticker_3>,
  <item:modernjapancity:store_signs_financing>,
  <item:modernjapancity:store_signs_cutsalon>,
  <item:modernjapancity:store_signs_coffe>,
  <item:modernjapancity:store_signs_realestate>,
  <item:modernjapancity:store_signs_bank>,
  <item:modernjapancity:store_signs_juku>,
  <item:modernjapancity:store_signs_ramen>,
  <item:modernjapancity:store_signs_mart>,
  <item:modernjapancity:store_signs_pharmacy>,
  <item:modernjapancity:store_signs_convenience_kantou>,
  <item:modernjapancity:store_signs_convenience_kansai>,
  <item:modernjapancity:store_sign_book>,
  <item:modernjapancity:store_sign_karaoke>,
  <item:modernjapancity:store_sign_homeapp>,
  <item:modernjapancity:store_sign_companystore>,
  <item:modernjapancity:store_sign_ricenoodles>,
  <item:modernjapancity:store_sign_westernrestaurant>,
  <item:modernjapancity:store_sign_japaneserestaurant>,
  <item:modernjapancity:store_sign_junkfood>,
  <item:modernjapancity:store_sign_beefbowl>,
  <item:modernjapancity:store_sign_undertakers>,
  <item:modernjapancity:store_sign_watch>,
  <item:modernjapancity:store_signs_bento>,
  <item:modernjapancity:store_signs_yakitori>,
  <item:modernjapancity:store_signs_sushi>,
  <item:modernjapancity:store_signs_laundry>,
  <item:modernjapancity:store_signs_rent>
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
<tag:items:create_cities:signs/road>.add(
  <item:modernjapancity:road_sign_auxiliary_1>,
  <item:modernjapancity:road_sign_auxiliary_2>,
  <item:modernjapancity:road_sign_noparking>,
  <item:modernjapancity:road_sign_schoolroute>,
  <item:modernjapancity:road_sign_stop>,
  <item:modernjapancity:road_sign_crosswalk>,
  <item:modernjapancity:road_sign_nostoppingorstanding>,
  <item:modernjapancity:road_sign_noovertaking>,
  <item:modernjapancity:road_sign_30>,
  <item:modernjapancity:road_sign_40>,
  <item:modernjapancity:road_sign_50>,
  <item:modernjapancity:road_sign_60>,
  <item:modernjapancity:road_sign_noentry>,
  <item:modernjapancity:road_sign_crossroad>,
  <item:modernjapancity:road_sign_tjunction_a>,
  <item:modernjapancity:road_sign_tjunction_b>,
  <item:modernjapancity:road_sign_tjunction_c>,
  <item:modernjapancity:road_sign_slip>,
  <item:modernjapancity:road_sign_railway>,
  <item:modernjapancity:road_sign_oneway_left>,
  <item:modernjapancity:road_sign_oneway_right>,
  <item:modernjapancity:road_sign_nocorssing>,
  <item:modernjapancity:road_sign_streetname>,
  <item:modernjapancity:road_sign_designated_direction_upright>,
  <item:modernjapancity:road_sign_designated_direction_right>,
  <item:modernjapancity:road_sign_designated_direction_left>,
  <item:modernjapancity:road_sign_designated_direction_upright_right>,
  <item:modernjapancity:road_sign_designated_direction_upright_left>,
  <item:modernjapancity:road_sign_designated_direction_left_right>,
  <item:modernjapancity:landmark_sign_station>,
  <item:modernjapancity:landmark_sign_subway>,
  <item:modernjapancity:landmark_sign_hospital>,
  <item:modernjapancity:landmark_sign_park>,
  <item:modernjapancity:intersection_name_sign_block_1>,
  <item:modernjapancity:intersection_name_sign_block_2>,
  <item:modernjapancity:intersection_name_sign_block_3>,
  <item:modernjapancity:intersection_name_sign_block_4>,
  <item:modernjapancity:intersection_name_sign_block_5>,
  <item:modernjapancity:intersection_name_sign_block_6>,
  <item:modernjapancity:intersection_name_sign_station>,
  <item:modernjapancity:intersection_name_sign_park>,
  <item:modernjapancity:intersection_name_sign_school>,
  <item:modernjapancity:intersection_name_sign_koban>,
  <item:modernjapancity:intersection_name_sign_housing>,
  <item:modernjapancity:intersection_name_sign_newtown>,
  <item:modernjapancity:intersection_name_sign_tunnel>
);

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
<tag:items:create_cities:signs/station_information>.add(
  <item:mtr:railway_sign_2_even>,
  <item:modernjapancity:station_information_sign_platform>,
  <item:modernjapancity:station_information_sign_exit>,
  <item:modernjapancity:station_information_sign_ticket>,
  <item:modernjapancity:station_information_sign_farewell>,
  <item:modernjapancity:station_information_sign_others>,
  <item:modernjapancity:station_information_sign_platform_1>,
  <item:modernjapancity:station_information_sign_gates>,
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