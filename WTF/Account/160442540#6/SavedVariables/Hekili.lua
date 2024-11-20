
HekiliDB = {
["namespaces"] = {
["LibDualSpec-1.0"] = {
},
},
["profileKeys"] = {
["彭浦新村 - 芬里斯"] = "Default",
},
["profiles"] = {
["Default"] = {
["runOnce"] = {
["forceReloadClassDefaultOptions_20220306_269"] = true,
["forceReloadAllDefaultPriorities_20220228"] = true,
["forceEnableAllClassesOnceDueToBug_20220225"] = true,
["forceReloadClassDefaultOptions_20220306_268"] = true,
["updateMaxRefreshToNewSpecOptions_20220222"] = true,
["fixHavocPriorityVersion_20240805"] = true,
["forceSpellFlashBrightness_20221030"] = true,
["forceReloadClassDefaultOptions_20220306_270"] = true,
["resetAberrantPackageDates_20190728_1"] = true,
},
["specs"] = {
[269] = {
["settings"] = {
["sef_one_charge"] = false,
["tok_damage"] = 1,
["check_wdp_range"] = false,
["allow_fsk"] = false,
["check_sck_range"] = false,
["use_diffuse"] = false,
},
},
[270] = {
["settings"] = {
["aoe_rsk"] = false,
["single_zen_pulse"] = false,
["save_faeline"] = false,
},
},
[268] = {
["settings"] = {
["purify_stagger_currhp"] = 12,
["eh_percent"] = 65,
["purify_stagger_maxhp"] = 6,
["purify_for_celestial"] = true,
["bof_percent"] = 50,
["purify_for_niuzao"] = true,
["max_damage"] = true,
["vivify_percent"] = 65,
},
},
},
["packs"] = {
["Windwalker"] = {
["source"] = "https://github.com/simulationcraft/simc/blob/thewrwithin/profiles/PreRaids/PR_Monk_Windwalker.simc",
["builtIn"] = true,
["date"] = 20240801,
["spec"] = 269,
["desc"] = "2024-07-26: The War Within",
["lists"] = {
["default"] = {
{
["enabled"] = true,
["criteria"] = "target.debuff.casting.react",
["action"] = "spear_hand_strike",
},
{
["enabled"] = true,
["description"] = "Potion",
["criteria"] = "buff.storm_earth_and_fire.up & ( ! talent.invoke_xuen.enabled || pet.xuen_the_white_tiger.active ) || boss & fight_remains <= 30",
["action"] = "potion",
},
{
["enabled"] = true,
["description"] = "Use Trinkets",
["action"] = "call_action_list",
["list_name"] = "trinkets",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["description"] = "Use Cooldowns",
["strict"] = 1,
["criteria"] = "talent.storm_earth_and_fire.enabled",
["list_name"] = "cooldowns",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["description"] = "Default Priority",
["strict"] = 1,
["criteria"] = "active_enemies >= 3",
["list_name"] = "default_aoe",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["strict"] = 1,
["criteria"] = "active_enemies < 3",
["list_name"] = "default_st",
},
},
["default_aoe"] = {
{
["enabled"] = true,
["description"] = ">=3 Targets",
["criteria"] = "( energy > 55 & talent.inner_peace.enabled || energy > 60 & ! talent.inner_peace.enabled ) & combo_strike & chi.max - chi >= 2 & buff.teachings_of_the_monastery.stack < buff.teachings_of_the_monastery.max_stack & ! buff.ordered_elements.up & ( ! set_bonus.tier30_2pc || set_bonus.tier30_2pc & buff.dance_of_chiji.up & ! buff.blackout_reinforcement.up & talent.energy_burst.enabled ) || buff.storm_earth_and_fire.remains > 3 & cooldown.fists_of_fury.remains < 3 & chi < 2",
["action"] = "tiger_palm",
},
{
["action"] = "touch_of_death",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "buff.dance_of_chiji.stack = 2 & combo_strike",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["action"] = "rising_sun_kick",
["criteria"] = "buff.ordered_elements.remains < 2 & buff.storm_earth_and_fire.up & talent.ordered_elements.enabled",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.storm_earth_and_fire.up & buff.ordered_elements.up & cooldown.strike_of_the_windlord.remains",
["action"] = "celestial_conduit",
},
{
["enabled"] = true,
["criteria"] = "combo_strike",
["action"] = "chi_burst",
},
{
["enabled"] = true,
["criteria"] = "buff.dance_of_chiji.stack = 2 || buff.dance_of_chiji.up & combo_strike & buff.storm_earth_and_fire.up",
["action"] = "spinning_crane_kick",
},
{
["action"] = "whirling_dragon_punch",
["enabled"] = true,
},
{
["action"] = "strike_of_the_windlord",
["enabled"] = true,
},
{
["enabled"] = true,
["action"] = "blackout_kick",
["criteria"] = "buff.teachings_of_the_monastery.stack = 8 & talent.shadowboxing_treads.enabled",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "fists_of_fury",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "rising_sun_kick",
["criteria"] = "talent.xuens_battlegear.enabled || cooldown.whirling_dragon_punch.remains < 3",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["action"] = "blackout_kick",
["criteria"] = "! talent.knowledge_of_the_broken_temple.enabled & buff.teachings_of_the_monastery.stack = 4 & talent.shadowboxing_treads.enabled",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "tiger_palm",
["criteria"] = "combo_strike & chi.deficit >= 2 & ( ! buff.ordered_elements.up || energy.time_to_max <= gcd.max * 3 )",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.the_emperors_capacitor.stack > 19 & ! buff.ordered_elements.up & combo_strike & talent.power_of_the_thunder_king.enabled",
["action"] = "crackling_jade_lightning",
},
{
["enabled"] = true,
["action"] = "blackout_kick",
["criteria"] = "combo_strike & talent.shadowboxing_treads.enabled",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "blackout_kick",
["criteria"] = "combo_strike",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.the_emperors_capacitor.stack > 19 & ! buff.ordered_elements.up & combo_strike",
["action"] = "crackling_jade_lightning",
},
{
["action"] = "jadefire_stomp",
["enabled"] = true,
},
{
["enabled"] = true,
["action"] = "tiger_palm",
["criteria"] = "combo_strike & buff.ordered_elements.up & chi.deficit >= 1",
["cycle_targets"] = 1,
},
},
["cooldowns"] = {
{
["enabled"] = true,
["criteria"] = "( active_enemies > 2 || debuff.acclamation.up ) & ( prev.tiger_palm || energy < 60 & ! talent.inner_peace.enabled || energy < 55 & talent.inner_peace.enabled || chi > 3 )",
["action"] = "invoke_xuen",
},
{
["enabled"] = true,
["criteria"] = "( buff.invokers_delight.up || fight_remains > 15 & cooldown.storm_earth_and_fire.full_recharge_time < cooldown.invoke_xuen_the_white_tiger.remains & cooldown.strike_of_the_windlord.remains < 2 ) || boss & fight_remains <= 30 || buff.bloodlust.up & cooldown.invoke_xuen_the_white_tiger.remains",
["action"] = "storm_earth_and_fire",
},
{
["action"] = "touch_of_karma",
["enabled"] = true,
},
},
["trinkets"] = {
{
["enabled"] = true,
["name"] = "algethar_puzzle_box",
["description"] = "Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> while <a href='https://www.wowhead.com/spell=123904/invoke-xuen-the-white-tiger'>Invoke Xuen, the White Tiger</a> is active.",
["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & ! buff.storm_earth_and_fire.up || boss & fight_remains < 25",
["action"] = "algethar_puzzle_box",
},
{
["enabled"] = true,
["criteria"] = "buff.storm_earth_and_fire.up",
["name"] = "erupting_spear_fragment",
["action"] = "erupting_spear_fragment",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff & ! buff.storm_earth_and_fire.up & ! pet.xuen_the_white_tiger.active || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 30 || boss & fight_remains < 5",
["action"] = "manic_grieftorch",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff & ! buff.storm_earth_and_fire.up & ! pet.xuen_the_white_tiger.active || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 30 || boss & fight_remains < 10",
["action"] = "beacon_to_the_beyond",
},
{
["enabled"] = true,
["criteria"] = "cooldown.fists_of_fury.remains < 2 & cooldown.invoke_xuen_the_white_tiger.remains > 10 || boss & fight_remains < 12",
["action"] = "djaruun_pillar_of_the_elder_flame",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 10 || boss & fight_remains < 10",
["action"] = "dragonfire_bomb_dispenser",
},
{
["enabled"] = true,
["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & buff.storm_earth_and_fire.up || boss & fight_remains < 25",
["action"] = "trinket1",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 30",
["action"] = "trinket1",
},
{
["enabled"] = true,
["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & buff.storm_earth_and_fire.up || boss & fight_remains < 25",
["action"] = "mydas_talisman",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 30",
["action"] = "mydas_talisman",
},
},
["default_st"] = {
{
["enabled"] = true,
["action"] = "tiger_palm",
["cycle_targets"] = 1,
["criteria"] = "( energy > 55 & talent.inner_peace.enabled || energy > 60 & ! talent.inner_peace.enabled ) & combo_strike & chi.max - chi >= 2 & buff.teachings_of_the_monastery.stack < buff.teachings_of_the_monastery.max_stack & ! buff.ordered_elements.up & ( ! set_bonus.tier30_2pc || set_bonus.tier30_2pc & buff.dance_of_chiji.up & ! buff.blackout_reinforcement.up & talent.energy_burst.enabled )",
["description"] = "<3 Targets",
},
{
["action"] = "touch_of_death",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "buff.storm_earth_and_fire.up & buff.ordered_elements.up & cooldown.strike_of_the_windlord.remains",
["action"] = "celestial_conduit",
},
{
["enabled"] = true,
["action"] = "rising_sun_kick",
["criteria"] = "! pet.xuen_the_white_tiger.active & prev.tiger_palm || buff.storm_earth_and_fire.up & talent.ordered_elements.enabled",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "talent.gale_force.enabled & buff.invokers_delight.up",
["action"] = "strike_of_the_windlord",
},
{
["enabled"] = true,
["action"] = "fists_of_fury",
["criteria"] = "buff.power_infusion.up & buff.bloodlust.up",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "rising_sun_kick",
["criteria"] = "buff.power_infusion.up & buff.bloodlust.up",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "blackout_kick",
["criteria"] = "buff.teachings_of_the_monastery.stack = 8",
["cycle_targets"] = 1,
},
{
["action"] = "whirling_dragon_punch",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "time > 5",
["action"] = "strike_of_the_windlord",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.up & set_bonus.tier30_2pc & ! buff.blackout_reinforcement.up",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.ordered_elements.remains > execute_time || ! buff.ordered_elements.up || buff.ordered_elements.remains <= gcd.max",
["action"] = "fists_of_fury",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.up & set_bonus.tier30_2pc & ! buff.blackout_reinforcement.up & talent.energy_burst.enabled",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["action"] = "tiger_palm",
["criteria"] = "combo_strike & chi.deficit >= 2 & ( ! buff.ordered_elements.up || energy.time_to_max <= gcd.max * 3 )",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "talent.singularly_focused_jade.enabled || talent.jadefire_harmony.enabled",
["action"] = "jadefire_stomp",
},
{
["enabled"] = true,
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.blackout_reinforcement.up",
["action"] = "blackout_kick",
},
{
["enabled"] = true,
["criteria"] = "! buff.ordered_elements.up",
["action"] = "chi_burst",
},
{
["enabled"] = true,
["action"] = "blackout_kick",
["criteria"] = "combo_strike & ( buff.ordered_elements.up || buff.bok_proc.up & chi.deficit >= 1 & talent.energy_burst.enabled )",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.up & ( buff.ordered_elements.up || energy.time_to_max >= gcd.max * 3 & talent.sequenced_strikes.enabled & talent.energy_burst.enabled || ! talent.sequenced_strikes.enabled || ! talent.energy_burst.enabled || buff.dance_of_chiji.stack = 2 || buff.dance_of_chiji.remains <= gcd.max * 3 )",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["criteria"] = "buff.the_emperors_capacitor.stack > 19 & ! buff.ordered_elements.up & combo_strike",
["action"] = "crackling_jade_lightning",
},
{
["enabled"] = true,
["action"] = "blackout_kick",
["criteria"] = "combo_strike",
["cycle_targets"] = 1,
},
{
["action"] = "jadefire_stomp",
["enabled"] = true,
},
{
["enabled"] = true,
["action"] = "tiger_palm",
["criteria"] = "combo_strike & buff.ordered_elements.up & chi.deficit >= 1",
["cycle_targets"] = 1,
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & talent.hit_combo.enabled",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["action"] = "blackout_kick",
["criteria"] = "buff.ordered_elements.up & ! talent.hit_combo.enabled",
["cycle_targets"] = 1,
},
},
},
["version"] = 20240801,
["warnings"] = "The import for 'default' required some automated changes.\nLine 2: Converted 'talent.invoke_xuen' to 'talent.invoke_xuen.enabled' (1x).\nLine 4: Converted 'talent.storm_earth_and_fire' to 'talent.storm_earth_and_fire.enabled' (1x).\n\nThe import for 'cooldowns' required some automated changes.\nLine 1: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 1: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\n\nThe import for 'trinkets' required some automated changes.\nLine 1: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 8: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 8: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 8: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 8: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 9: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 10: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 10: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 10: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 10: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\n\nThe import for 'default_st' required some automated changes.\nLine 1: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 1: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 1: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 4: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 5: Converted 'talent.gale_force' to 'talent.gale_force.enabled' (1x).\nLine 14: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 16: Converted 'talent.singularly_focused_jade' to 'talent.singularly_focused_jade.enabled' (1x).\nLine 16: Converted 'talent.jadefire_harmony' to 'talent.jadefire_harmony.enabled' (1x).\nLine 20: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 21: Converted 'talent.sequenced_strikes' to 'talent.sequenced_strikes.enabled' (1x).\nLine 21: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 21: Converted 'talent.sequenced_strikes' to 'talent.sequenced_strikes.enabled' (1x).\nLine 21: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 27: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\nLine 28: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\n\nThe import for 'default_aoe' required some automated changes.\nLine 1: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 1: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 1: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 4: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 10: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 12: Converted 'talent.xuens_battlegear' to 'talent.xuens_battlegear.enabled' (1x).\nLine 14: Converted 'talent.knowledge_of_the_broken_temple' to 'talent.knowledge_of_the_broken_temple.enabled' (1x).\nLine 14: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 16: Converted 'talent.power_of_the_thunder_king' to 'talent.power_of_the_thunder_king.enabled' (1x).\nLine 17: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\n\nThis profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 6 action lists.\n",
["profile"] = "actions+=/spear_hand_strike,if=target.debuff.casting.react\n# Potion\nactions+=/potion,if=buff.storm_earth_and_fire.up&(!talent.invoke_xuen||pet.xuen_the_white_tiger.active)||boss&fight_remains<=30\n# Use Trinkets\nactions+=/call_action_list,name=trinkets\n# Use Cooldowns\nactions+=/call_action_list,name=cooldowns,strict=1,if=talent.storm_earth_and_fire\n# Default Priority\nactions+=/call_action_list,name=default_aoe,strict=1,if=active_enemies>=3\nactions+=/call_action_list,name=default_st,strict=1,if=active_enemies<3\n\n# Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> while <a href='https://www.wowhead.com/spell=123904/invoke-xuen-the-white-tiger'>Invoke Xuen, the White Tiger</a> is active.\nactions.trinkets+=/use_item,name=algethar_puzzle_box,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&!buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.trinkets+=/use_item,name=erupting_spear_fragment,if=buff.storm_earth_and_fire.up\nactions.trinkets+=/manic_grieftorch,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff&!buff.storm_earth_and_fire.up&!pet.xuen_the_white_tiger.active||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30||boss&fight_remains<5\nactions.trinkets+=/beacon_to_the_beyond,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff&!buff.storm_earth_and_fire.up&!pet.xuen_the_white_tiger.active||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30||boss&fight_remains<10\nactions.trinkets+=/djaruun_pillar_of_the_elder_flame,if=cooldown.fists_of_fury.remains<2&cooldown.invoke_xuen_the_white_tiger.remains>10||boss&fight_remains<12\nactions.trinkets+=/dragonfire_bomb_dispenser,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>10||boss&fight_remains<10\nactions.trinkets+=/trinket1,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.trinkets+=/trinket1,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30\nactions.trinkets+=/trinket2,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.trinkets+=/trinket2,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30\n\nactions.cooldowns+=/invoke_xuen_the_white_tiger,if=(active_enemies>2||debuff.acclamation.up)&(prev.tiger_palm||energy<60&!talent.inner_peace||energy<55&talent.inner_peace||chi>3)\nactions.cooldowns+=/storm_earth_and_fire,if=(buff.invokers_delight.up||fight_remains>15&cooldown.storm_earth_and_fire.full_recharge_time<cooldown.invoke_xuen_the_white_tiger.remains&cooldown.strike_of_the_windlord.remains<2)||boss&fight_remains<=30||buff.bloodlust.up&cooldown.invoke_xuen_the_white_tiger.remains\nactions.cooldowns+=/touch_of_karma\n\n# >=3 Targets\nactions.default_aoe+=/tiger_palm,if=(energy>55&talent.inner_peace||energy>60&!talent.inner_peace)&combo_strike&chi.max-chi>=2&buff.teachings_of_the_monastery.stack<buff.teachings_of_the_monastery.max_stack&!buff.ordered_elements.up&(!set_bonus.tier30_2pc||set_bonus.tier30_2pc&buff.dance_of_chiji.up&!buff.blackout_reinforcement.up&talent.energy_burst)||buff.storm_earth_and_fire.remains>3&cooldown.fists_of_fury.remains<3&chi<2\nactions.default_aoe+=/touch_of_death\nactions.default_aoe+=/spinning_crane_kick,if=buff.dance_of_chiji.stack=2&combo_strike\nactions.default_aoe+=/rising_sun_kick,cycle_targets=1,if=buff.ordered_elements.remains<2&buff.storm_earth_and_fire.up&talent.ordered_elements\nactions.default_aoe+=/celestial_conduit,if=buff.storm_earth_and_fire.up&buff.ordered_elements.up&cooldown.strike_of_the_windlord.remains\nactions.default_aoe+=/chi_burst,if=combo_strike\nactions.default_aoe+=/spinning_crane_kick,if=buff.dance_of_chiji.stack=2||buff.dance_of_chiji.up&combo_strike&buff.storm_earth_and_fire.up\nactions.default_aoe+=/whirling_dragon_punch\nactions.default_aoe+=/strike_of_the_windlord\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=8&talent.shadowboxing_treads\nactions.default_aoe+=/fists_of_fury,cycle_targets=1\nactions.default_aoe+=/rising_sun_kick,cycle_targets=1,if=talent.xuens_battlegear||cooldown.whirling_dragon_punch.remains<3\nactions.default_aoe+=/spinning_crane_kick,if=combo_strike\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=!talent.knowledge_of_the_broken_temple&buff.teachings_of_the_monastery.stack=4&talent.shadowboxing_treads\nactions.default_aoe+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.deficit>=2&(!buff.ordered_elements.up||energy.time_to_max<=gcd.max*3)\nactions.default_aoe+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&!buff.ordered_elements.up&combo_strike&talent.power_of_the_thunder_king\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&talent.shadowboxing_treads\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.default_aoe+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&!buff.ordered_elements.up&combo_strike\nactions.default_aoe+=/jadefire_stomp\nactions.default_aoe+=/tiger_palm,cycle_targets=1,if=combo_strike&buff.ordered_elements.up&chi.deficit>=1\n\n# <3 Targets\nactions.default_st+=/tiger_palm,cycle_targets=1,if=(energy>55&talent.inner_peace||energy>60&!talent.inner_peace)&combo_strike&chi.max-chi>=2&buff.teachings_of_the_monastery.stack<buff.teachings_of_the_monastery.max_stack&!buff.ordered_elements.up&(!set_bonus.tier30_2pc||set_bonus.tier30_2pc&buff.dance_of_chiji.up&!buff.blackout_reinforcement.up&talent.energy_burst)\nactions.default_st+=/touch_of_death\nactions.default_st+=/celestial_conduit,if=buff.storm_earth_and_fire.up&buff.ordered_elements.up&cooldown.strike_of_the_windlord.remains\nactions.default_st+=/rising_sun_kick,cycle_targets=1,if=!pet.xuen_the_white_tiger.active&prev.tiger_palm||buff.storm_earth_and_fire.up&talent.ordered_elements\nactions.default_st+=/strike_of_the_windlord,if=talent.gale_force&buff.invokers_delight.up\nactions.default_st+=/fists_of_fury,cycle_targets=1,if=buff.power_infusion.up&buff.bloodlust.up\nactions.default_st+=/rising_sun_kick,cycle_targets=1,if=buff.power_infusion.up&buff.bloodlust.up\nactions.default_st+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=8\nactions.default_st+=/whirling_dragon_punch\nactions.default_st+=/strike_of_the_windlord,if=time>5\nactions.default_st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&set_bonus.tier30_2pc&!buff.blackout_reinforcement.up\nactions.default_st+=/rising_sun_kick,cycle_targets=1\nactions.default_st+=/fists_of_fury,if=buff.ordered_elements.remains>execute_time||!buff.ordered_elements.up||buff.ordered_elements.remains<=gcd.max\nactions.default_st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&set_bonus.tier30_2pc&!buff.blackout_reinforcement.up&talent.energy_burst\nactions.default_st+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.deficit>=2&(!buff.ordered_elements.up||energy.time_to_max<=gcd.max*3)\nactions.default_st+=/jadefire_stomp,if=talent.singularly_focused_jade||talent.jadefire_harmony\nactions.default_st+=/rising_sun_kick,cycle_targets=1\nactions.default_st+=/blackout_kick,if=combo_strike&buff.blackout_reinforcement.up\nactions.default_st+=/chi_burst,if=!buff.ordered_elements.up\nactions.default_st+=/blackout_kick,cycle_targets=1,if=combo_strike&(buff.ordered_elements.up||buff.bok_proc.up&chi.deficit>=1&talent.energy_burst)\nactions.default_st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&(buff.ordered_elements.up||energy.time_to_max>=gcd.max*3&talent.sequenced_strikes&talent.energy_burst||!talent.sequenced_strikes||!talent.energy_burst||buff.dance_of_chiji.stack=2||buff.dance_of_chiji.remains<=gcd.max*3)\nactions.default_st+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&!buff.ordered_elements.up&combo_strike\nactions.default_st+=/blackout_kick,cycle_targets=1,if=combo_strike\nactions.default_st+=/jadefire_stomp\nactions.default_st+=/tiger_palm,cycle_targets=1,if=combo_strike&buff.ordered_elements.up&chi.deficit>=1\nactions.default_st+=/chi_burst\nactions.default_st+=/spinning_crane_kick,if=combo_strike&buff.ordered_elements.up&talent.hit_combo\nactions.default_st+=/blackout_kick,cycle_targets=1,if=buff.ordered_elements.up&!talent.hit_combo",
["author"] = "SimC",
},
["Brewmaster"] = {
["source"] = "https://github.com/simulationcraft/simc/",
["builtIn"] = true,
["date"] = 20240731,
["author"] = "SimC",
["desc"] = "2024-07-26: The War Within",
["lists"] = {
["items"] = {
{
["enabled"] = true,
["criteria"] = "boss & fight_remains < cooldown_duration || ( debuff.weapons_of_order_debuff.stack > 3 || fight_remains > cooldown_remains )",
["action"] = "main_hand",
},
{
["enabled"] = true,
["criteria"] = "boss & fight_remains < cooldown_duration || ( debuff.weapons_of_order_debuff.stack > 3 || fight_remains > cooldown_remains )",
["action"] = "trinket1",
},
{
["enabled"] = true,
["criteria"] = "boss & fight_remains < cooldown_duration || ( debuff.weapons_of_order_debuff.stack > 3 || fight_remains > cooldown_remains )",
["action"] = "mydas_talisman",
},
},
["default"] = {
{
["enabled"] = true,
["criteria"] = "target.debuff.casting.react",
["action"] = "spear_hand_strike",
},
{
["action"] = "diffuse_magic",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "health.pct <= settings.vivify_percent & buff.vivacious_vivification.up",
["action"] = "vivify",
},
{
["enabled"] = true,
["criteria"] = "tanking & settings.purify_for_celestial & ( time_to_max_charges < gcd.max || buff.purified_chi.up & buff.purified_chi.remains < 1.5 * gcd.max ) || cooldown.celestial_brew.remains < 2 * gcd.max & charges_fractional > 1.5",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "tanking & ( ! talent.improved_celestial_brew.enabled || buff.purified_chi.up ) & ( ! settings.max_damage || buff.blackout_combo.down )",
["action"] = "celestial_brew",
},
{
["enabled"] = true,
["criteria"] = "group & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_currhp > 0 & stagger.pct >= settings.purify_stagger_currhp",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "solo & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_currhp > 0 & stagger.pct >= settings.purify_stagger_currhp * 0.5",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "group & ( settings.max_damage & buff.blackout_combo.down ) & settings.purify_stagger_maxhp > 0 & stagger.pct >= settings.purify_stagger_maxhp",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "solo & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_maxhp > 0 & stagger.pct >= settings.purify_stagger_maxhp * 0.5",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "group & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & stagger.pct > 20",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "solo & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & stagger.pct > 10",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & buff.fortifying_brew.down",
["action"] = "dampen_harm",
},
{
["enabled"] = true,
["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & ( buff.dampen_harm.down )",
["action"] = "fortifying_brew",
},
{
["action"] = "potion",
["enabled"] = true,
},
{
["action"] = "touch_of_death",
["enabled"] = true,
},
{
["enabled"] = true,
["action"] = "call_action_list",
["list_name"] = "items",
},
{
["action"] = "blood_fury",
["enabled"] = true,
},
{
["action"] = "berserking",
["enabled"] = true,
},
{
["action"] = "lights_judgment",
["enabled"] = true,
},
{
["action"] = "fireblood",
["enabled"] = true,
},
{
["action"] = "ancestral_call",
["enabled"] = true,
},
{
["action"] = "bag_of_tricks",
["enabled"] = true,
},
{
["enabled"] = true,
["description"] = "Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> when <a href='https://www.wowhead.com/spell=387184/weapons-of-order'>Weapons of Order</a> reaches 4 stacks.",
["criteria"] = "buff.gift_of_the_ox.stack > 4 & health.pct < settings.eh_percent",
["action"] = "expel_harm",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["strict"] = 1,
["criteria"] = "talent.press_the_advantage.enabled",
["list_name"] = "rotation_pta",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["strict"] = 1,
["criteria"] = "! talent.press_the_advantage.enabled",
["list_name"] = "rotation_boc",
},
},
["precombat"] = {
{
["action"] = "potion",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "talent.chi_burst.enabled",
["action"] = "chi_burst",
},
},
["rotation_boc"] = {
{
["action"] = "blackout_kick",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "( buff.blackout_combo.down & ( buff.recent_purifies.down || cooldown.purifying_brew.charges_fractional > ( 1 + talent.improved_purifying_brew.enabled - 0.1 ) ) ) & talent.improved_invoke_niuzao_the_black_ox.enabled & ( cooldown.weapons_of_order.remains > 40 || cooldown.weapons_of_order.remains < 5 )",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "( buff.recent_purifies.up ) & talent.improved_invoke_niuzao_the_black_ox.enabled",
["action"] = "weapons_of_order",
},
{
["enabled"] = true,
["criteria"] = "( buff.invoke_niuzao_the_black_ox.down & buff.recent_purifies.up & buff.weapons_of_order.remains < 14 ) & talent.improved_invoke_niuzao_the_black_ox.enabled",
["action"] = "invoke_niuzao_the_black_ox",
},
{
["enabled"] = true,
["criteria"] = "( debuff.weapons_of_order_debuff.stack > 3 ) & ! talent.improved_invoke_niuzao_the_black_ox.enabled",
["action"] = "invoke_niuzao_the_black_ox",
},
{
["enabled"] = true,
["criteria"] = "( ! talent.weapons_of_order.enabled )",
["action"] = "invoke_niuzao_the_black_ox",
},
{
["enabled"] = true,
["criteria"] = "( talent.weapons_of_order.enabled ) & ! talent.improved_invoke_niuzao_the_black_ox.enabled",
["action"] = "weapons_of_order",
},
{
["enabled"] = true,
["criteria"] = "( time - action.weapons_of_order.last_used < 2 )",
["action"] = "keg_smash",
},
{
["enabled"] = true,
["criteria"] = "( buff.weapons_of_order.remains < gcd.max * 2 & buff.weapons_of_order.up ) & ! talent.improved_invoke_niuzao_the_black_ox.enabled",
["action"] = "keg_smash",
},
{
["enabled"] = true,
["criteria"] = "( buff.weapons_of_order.remains < gcd.max * 2 ) & talent.improved_invoke_niuzao_the_black_ox.enabled",
["action"] = "keg_smash",
},
{
["enabled"] = true,
["criteria"] = "( ! buff.blackout_combo.up ) & ! talent.improved_invoke_niuzao_the_black_ox.enabled",
["action"] = "purifying_brew",
},
{
["action"] = "rising_sun_kick",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "( energy + energy.regen <= 40 )",
["action"] = "black_ox_brew",
},
{
["enabled"] = true,
["criteria"] = "( buff.blackout_combo.up & active_enemies = 1 )",
["action"] = "tiger_palm",
},
{
["enabled"] = true,
["criteria"] = "( buff.charred_passions.remains < cooldown.blackout_kick.remains )",
["action"] = "breath_of_fire",
},
{
["enabled"] = true,
["criteria"] = "( buff.weapons_of_order.up & debuff.weapons_of_order_debuff.stack <= 3 )",
["action"] = "keg_smash",
},
{
["enabled"] = true,
["criteria"] = "( time < 10 & debuff.weapons_of_order_debuff.stack > 3 ) || ( time > 10 & talent.weapons_of_order.enabled )",
["action"] = "bonedust_brew",
},
{
["enabled"] = true,
["criteria"] = "( ! talent.weapons_of_order.enabled )",
["action"] = "bonedust_brew",
},
{
["enabled"] = true,
["criteria"] = "( buff.bonedust_brew.up )",
["action"] = "exploding_keg",
},
{
["enabled"] = true,
["criteria"] = "( cooldown.bonedust_brew.remains >= 20 )",
["action"] = "exploding_keg",
},
{
["enabled"] = true,
["criteria"] = "( ! talent.bonedust_brew.enabled )",
["action"] = "exploding_keg",
},
{
["action"] = "keg_smash",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "talent.rushing_jade_wind.enabled",
["action"] = "rushing_jade_wind",
},
{
["action"] = "breath_of_fire",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "active_enemies = 1 & ! talent.blackout_combo.enabled",
["action"] = "tiger_palm",
},
{
["enabled"] = true,
["criteria"] = "active_enemies > 1",
["action"] = "spinning_crane_kick",
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
},
["rotation_pta"] = {
{
["action"] = "invoke_niuzao_the_black_ox",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "buff.press_the_advantage.stack < ( 7 + main_hand.2h )",
["action"] = "rising_sun_kick",
},
{
["enabled"] = true,
["criteria"] = "buff.press_the_advantage.stack > 9 & active_enemies <= 3 & ( buff.blackout_combo.up || ! talent.blackout_combo.enabled )",
["action"] = "rising_sun_kick",
},
{
["enabled"] = true,
["criteria"] = "( buff.press_the_advantage.stack > 9 ) & active_enemies > 3",
["action"] = "keg_smash",
},
{
["enabled"] = true,
["criteria"] = "active_enemies > 5 & buff.exploding_keg.up & buff.charred_passions.up",
["action"] = "spinning_crane_kick",
},
{
["action"] = "blackout_kick",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "( ! buff.blackout_combo.up )",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "energy + energy.regen <= 40",
["action"] = "black_ox_brew",
},
{
["enabled"] = true,
["criteria"] = "buff.charred_passions.remains < cooldown.blackout_kick.remains & ( buff.blackout_combo.up || ! talent.blackout_combo.enabled )",
["action"] = "breath_of_fire",
},
{
["action"] = "bonedust_brew",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "( ( buff.bonedust_brew.up ) || ( cooldown.bonedust_brew.remains >= 20 ) )",
["action"] = "exploding_keg",
},
{
["enabled"] = true,
["criteria"] = "( ! talent.bonedust_brew.enabled )",
["action"] = "exploding_keg",
},
{
["enabled"] = true,
["criteria"] = "( buff.blackout_combo.up || ! talent.blackout_combo.enabled )",
["action"] = "breath_of_fire",
},
{
["enabled"] = true,
["criteria"] = "buff.press_the_advantage.stack < 10",
["action"] = "keg_smash",
},
{
["enabled"] = true,
["criteria"] = "talent.rushing_jade_wind.enabled",
["action"] = "rushing_jade_wind",
},
{
["enabled"] = true,
["criteria"] = "active_enemies > 2",
["action"] = "spinning_crane_kick",
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
},
},
["version"] = 20240731,
["warnings"] = "The import for 'default' required some automated changes.\nLine 5: Converted 'talent.improved_celestial_brew' to 'talent.improved_celestial_brew.enabled' (1x).\n\nThis profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 5 action lists.\n",
["profile"] = "actions.precombat+=/potion\nactions.precombat+=/chi_burst,if=talent.chi_burst.enabled\n\nactions+=/spear_hand_strike,if=target.debuff.casting.react\nactions+=/diffuse_magic\nactions+=/vivify,if=health.pct<=settings.vivify_percent&buff.vivacious_vivification.up\nactions+=/purifying_brew,if=tanking&settings.purify_for_celestial&(time_to_max_charges<gcd.max||buff.purified_chi.up&buff.purified_chi.remains<1.5*gcd.max)||cooldown.celestial_brew.remains<2*gcd.max&charges_fractional>1.5\nactions+=/celestial_brew,if=tanking&(!talent.improved_celestial_brew||buff.purified_chi.up)&(!settings.max_damage||buff.blackout_combo.down)\n## actions+=/purifying_brew,line_cd=5,if=talent.improved_invoke_niuzao_the_black_ox&settings.purify_for_niuzao&pet.niuzao_the_black_ox.active\nactions+=/purifying_brew,if=group&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_currhp>0&stagger.pct>=settings.purify_stagger_currhp\nactions+=/purifying_brew,if=solo&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_currhp>0&stagger.pct>=settings.purify_stagger_currhp*0.5\nactions+=/purifying_brew,if=group&(settings.max_damage&buff.blackout_combo.down)&settings.purify_stagger_maxhp>0&stagger.pct>=settings.purify_stagger_maxhp\nactions+=/purifying_brew,if=solo&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_maxhp>0&stagger.pct>=settings.purify_stagger_maxhp*0.5\nactions+=/purifying_brew,if=group&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&stagger.pct>20\nactions+=/purifying_brew,if=solo&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&stagger.pct>10\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(0.2+(0.2*group))&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(0.2+(0.2*group))&(buff.dampen_harm.down)\nactions+=/potion\nactions+=/touch_of_death\nactions+=/call_action_list,name=items\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\n## Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> when <a href='https://www.wowhead.com/spell=387184/weapons-of-order'>Weapons of Order</a> reaches 4 stacks.\n## actions+=/invoke_external_buff,name=power_infusion,if=buff.weapons_of_order.remains<=20&talent.weapons_of_order.enabled\n# Use <a href='https://www.wowhead.com/spell=10060/power-infusion'>Power Infusion</a> when <a href='https://www.wowhead.com/spell=387184/weapons-of-order'>Weapons of Order</a> reaches 4 stacks.\n## actions+=/invoke_external_buff,name=power_infusion,if=!talent.weapons_of_order.enabled\nactions+=/expel_harm,if=buff.gift_of_the_ox.stack>4&health.pct<settings.eh_percent\nactions+=/call_action_list,name=rotation_pta,strict=1,if=talent.press_the_advantage.enabled\nactions+=/call_action_list,name=rotation_boc,strict=1,if=!talent.press_the_advantage.enabled\n\nactions.items+=/main_hand,if=boss&fight_remains<cooldown_duration||(debuff.weapons_of_order_debuff.stack>3||fight_remains>cooldown_remains)\nactions.items+=/trinket1,if=boss&fight_remains<cooldown_duration||(debuff.weapons_of_order_debuff.stack>3||fight_remains>cooldown_remains)\nactions.items+=/trinket2,if=boss&fight_remains<cooldown_duration||(debuff.weapons_of_order_debuff.stack>3||fight_remains>cooldown_remains)\n\nactions.rotation_pta+=/invoke_niuzao_the_black_ox\nactions.rotation_pta+=/rising_sun_kick,if=buff.press_the_advantage.stack<(7+main_hand.2h)\nactions.rotation_pta+=/rising_sun_kick,if=buff.press_the_advantage.stack>9&active_enemies<=3&(buff.blackout_combo.up||!talent.blackout_combo.enabled)\nactions.rotation_pta+=/keg_smash,if=(buff.press_the_advantage.stack>9)&active_enemies>3\nactions.rotation_pta+=/spinning_crane_kick,if=active_enemies>5&buff.exploding_keg.up&buff.charred_passions.up\nactions.rotation_pta+=/blackout_kick\nactions.rotation_pta+=/purifying_brew,if=(!buff.blackout_combo.up)\nactions.rotation_pta+=/black_ox_brew,if=energy+energy.regen<=40\nactions.rotation_pta+=/breath_of_fire,if=buff.charred_passions.remains<cooldown.blackout_kick.remains&(buff.blackout_combo.up||!talent.blackout_combo.enabled)\nactions.rotation_pta+=/bonedust_brew\nactions.rotation_pta+=/exploding_keg,if=((buff.bonedust_brew.up)||(cooldown.bonedust_brew.remains>=20))\nactions.rotation_pta+=/exploding_keg,if=(!talent.bonedust_brew.enabled)\nactions.rotation_pta+=/breath_of_fire,if=(buff.blackout_combo.up||!talent.blackout_combo.enabled)\nactions.rotation_pta+=/keg_smash,if=buff.press_the_advantage.stack<10\nactions.rotation_pta+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled\nactions.rotation_pta+=/spinning_crane_kick,if=active_enemies>2\n## actions.rotation_pta+=/spinning_crane_kick,if=(1.1>(time-action.melee_main_hand.last_used)*(1+spell_haste)-main_hand.2h)\nactions.rotation_pta+=/chi_burst\n\nactions.rotation_boc+=/blackout_kick\nactions.rotation_boc+=/purifying_brew,if=(buff.blackout_combo.down&(buff.recent_purifies.down||cooldown.purifying_brew.charges_fractional>(1+talent.improved_purifying_brew.enabled-0.1)))&talent.improved_invoke_niuzao_the_black_ox.enabled&(cooldown.weapons_of_order.remains>40||cooldown.weapons_of_order.remains<5)\nactions.rotation_boc+=/weapons_of_order,if=(buff.recent_purifies.up)&talent.improved_invoke_niuzao_the_black_ox.enabled\nactions.rotation_boc+=/invoke_niuzao_the_black_ox,if=(buff.invoke_niuzao_the_black_ox.down&buff.recent_purifies.up&buff.weapons_of_order.remains<14)&talent.improved_invoke_niuzao_the_black_ox.enabled\nactions.rotation_boc+=/invoke_niuzao_the_black_ox,if=(debuff.weapons_of_order_debuff.stack>3)&!talent.improved_invoke_niuzao_the_black_ox.enabled\nactions.rotation_boc+=/invoke_niuzao_the_black_ox,if=(!talent.weapons_of_order.enabled)\nactions.rotation_boc+=/weapons_of_order,if=(talent.weapons_of_order.enabled)&!talent.improved_invoke_niuzao_the_black_ox.enabled\nactions.rotation_boc+=/keg_smash,if=(time-action.weapons_of_order.last_used<2)\nactions.rotation_boc+=/keg_smash,if=(buff.weapons_of_order.remains<gcd*2&buff.weapons_of_order.up)&!talent.improved_invoke_niuzao_the_black_ox.enabled\nactions.rotation_boc+=/keg_smash,if=(buff.weapons_of_order.remains<gcd*2)&talent.improved_invoke_niuzao_the_black_ox.enabled\nactions.rotation_boc+=/purifying_brew,if=(!buff.blackout_combo.up)&!talent.improved_invoke_niuzao_the_black_ox.enabled\nactions.rotation_boc+=/rising_sun_kick\nactions.rotation_boc+=/black_ox_brew,if=(energy+energy.regen<=40)\nactions.rotation_boc+=/tiger_palm,if=(buff.blackout_combo.up&active_enemies=1)\nactions.rotation_boc+=/breath_of_fire,if=(buff.charred_passions.remains<cooldown.blackout_kick.remains)\nactions.rotation_boc+=/keg_smash,if=(buff.weapons_of_order.up&debuff.weapons_of_order_debuff.stack<=3)\nactions.rotation_boc+=/bonedust_brew,if=(time<10&debuff.weapons_of_order_debuff.stack>3)||(time>10&talent.weapons_of_order.enabled)\nactions.rotation_boc+=/bonedust_brew,if=(!talent.weapons_of_order.enabled)\nactions.rotation_boc+=/exploding_keg,if=(buff.bonedust_brew.up)\nactions.rotation_boc+=/exploding_keg,if=(cooldown.bonedust_brew.remains>=20)\nactions.rotation_boc+=/exploding_keg,if=(!talent.bonedust_brew.enabled)\nactions.rotation_boc+=/keg_smash\nactions.rotation_boc+=/rushing_jade_wind,if=talent.rushing_jade_wind.enabled\nactions.rotation_boc+=/breath_of_fire\nactions.rotation_boc+=/tiger_palm,if=active_enemies=1&!talent.blackout_combo.enabled\nactions.rotation_boc+=/spinning_crane_kick,if=active_enemies>1\nactions.rotation_boc+=/chi_burst",
["spec"] = 268,
},
["Mistweaver"] = {
["builtIn"] = true,
["date"] = 20240730,
["spec"] = 270,
["desc"] = "Healer priorities are DPS-oriented only\n\n2024-07-30: The War Within",
["lists"] = {
["default"] = {
{
["action"] = "spear_hand_strike",
["enabled"] = true,
},
{
["action"] = "use_items",
["enabled"] = true,
},
{
["action"] = "blood_fury",
["enabled"] = true,
},
{
["action"] = "berserking",
["enabled"] = true,
},
{
["action"] = "lights_judgment",
["enabled"] = true,
},
{
["action"] = "fireblood",
["enabled"] = true,
},
{
["action"] = "ancestral_call",
["enabled"] = true,
},
{
["action"] = "bag_of_tricks",
["enabled"] = true,
},
{
["action"] = "potion",
["enabled"] = true,
},
{
["enabled"] = true,
["action"] = "run_action_list",
["strict"] = 1,
["criteria"] = "pet.chiji.up",
["list_name"] = "crane",
},
{
["enabled"] = true,
["criteria"] = "! settings.save_faeline || talent.ancient_concordance.enabled & buff.ancient_concordance.down || talent.awakened_faeline.enabled & buff.awakened_faeline.down || talent.ancient_teachings.enabled & buff.ancient_teachings.down",
["action"] = "jadefire_stomp",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["strict"] = 1,
["criteria"] = "active_enemies >= 3",
["list_name"] = "aoe",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["strict"] = 1,
["criteria"] = "active_enemies < 3",
["list_name"] = "st",
},
},
["precombat"] = {
{
["action"] = "potion",
["enabled"] = true,
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
},
["aoe"] = {
{
["enabled"] = true,
["criteria"] = "active_enemies <= 3",
["action"] = "thunder_focus_tea",
},
{
["enabled"] = true,
["criteria"] = "buff.zen_pulse.up",
["action"] = "vivify",
},
{
["enabled"] = true,
["criteria"] = "active_enemies <= 3 || settings.aoe_rsk",
["action"] = "rising_sun_kick",
},
{
["enabled"] = true,
["criteria"] = "! talent.teachings_of_the_monastery.enabled || buff.teachings_of_the_monastery.up & active_enemies <= 3",
["action"] = "blackout_kick",
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
{
["action"] = "spinning_crane_kick",
["enabled"] = true,
},
},
["st"] = {
{
["action"] = "thunder_focus_tea",
["enabled"] = true,
},
{
["action"] = "rising_sun_kick",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "! talent.teachings_of_the_monastery.enabled || ( ! talent.awakened_faeline.enabled & buff.teachings_of_the_monastery.up || buff.teachings_of_the_monastery.stack > 3 ) & cooldown.rising_sun_kick.remains > gcd.max",
["action"] = "blackout_kick",
},
{
["enabled"] = true,
["criteria"] = "settings.single_zen_pulse & buff.zen_pulse.up",
["action"] = "vivify",
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
{
["action"] = "tiger_palm",
["enabled"] = true,
},
},
["crane"] = {
{
["enabled"] = true,
["criteria"] = "time_to_max_charges <= gcd.max",
["action"] = "renewing_mist",
},
{
["enabled"] = true,
["criteria"] = "talent.ancient_teachings.enabled & buff.ancient_teachings.remains < gcd.max",
["action"] = "thunder_focus_tea",
},
{
["enabled"] = true,
["criteria"] = "talent.ancient_teachings.enabled & buff.ancient_teachings.remains < gcd.max",
["action"] = "essence_font",
},
{
["enabled"] = true,
["criteria"] = "talent.ancient_teachings.enabled & buff.ancient_teachings.remains < gcd.max",
["action"] = "jadefire_stomp",
},
{
["enabled"] = true,
["criteria"] = "buff.invoke_chiji.stack > 1",
["action"] = "enveloping_mist",
},
{
["action"] = "rising_sun_kick",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "active_enemies > 3 || active_enemies > 1 & ! talent.ancient_concordance.enabled & ! talent.awakened_jadefire.enabled",
["action"] = "spinning_crane_kick",
},
{
["action"] = "blackout_kick",
["enabled"] = true,
},
{
["action"] = "tiger_palm",
["enabled"] = true,
},
},
},
["version"] = 20240730,
["warnings"] = "The import for 'default' required some automated changes.\nLine 11: Converted 'talent.ancient_concordance' to 'talent.ancient_concordance.enabled' (1x).\nLine 11: Converted 'talent.awakened_faeline' to 'talent.awakened_faeline.enabled' (1x).\nLine 11: Converted 'talent.ancient_teachings' to 'talent.ancient_teachings.enabled' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 4: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\nThe following auras were used in the action list but were not found in the addon database:\n - zen_pulse\n\nThe import for 'st' required some automated changes.\nLine 3: Converted 'talent.teachings_of_the_monastery' to 'talent.teachings_of_the_monastery.enabled' (1x).\nLine 3: Converted 'talent.awakened_faeline' to 'talent.awakened_faeline.enabled' (1x).\nThe following auras were used in the action list but were not found in the addon database:\n - zen_pulse\n\nThe import for 'crane' required some automated changes.\nLine 2: Converted 'talent.ancient_teachings' to 'talent.ancient_teachings.enabled' (1x).\nLine 3: Converted 'talent.ancient_teachings' to 'talent.ancient_teachings.enabled' (1x).\nLine 4: Converted 'talent.ancient_teachings' to 'talent.ancient_teachings.enabled' (1x).\nLine 7: Converted 'talent.ancient_concordance' to 'talent.ancient_concordance.enabled' (1x).\nLine 7: Converted 'talent.awakened_jadefire' to 'talent.awakened_jadefire.enabled' (1x).\n\nImported 5 action lists.\n",
["profile"] = "actions.precombat+=/potion\nactions.precombat+=/chi_burst\n\nactions+=/spear_hand_strike\nactions+=/use_items\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/potion\nactions+=/run_action_list,name=crane,strict=1,if=pet.chiji.up\nactions+=/jadefire_stomp,if=!settings.save_faeline||talent.ancient_concordance&buff.ancient_concordance.down||talent.awakened_faeline&buff.awakened_faeline.down||talent.ancient_teachings&buff.ancient_teachings.down\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>=3\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<3\n\nactions.st+=/thunder_focus_tea\nactions.st+=/rising_sun_kick\nactions.st+=/blackout_kick,if=!talent.teachings_of_the_monastery||(!talent.awakened_faeline&buff.teachings_of_the_monastery.up||buff.teachings_of_the_monastery.stack>3)&cooldown.rising_sun_kick.remains>gcd.max\nactions.st+=/vivify,if=settings.single_zen_pulse&buff.zen_pulse.up\nactions.st+=/chi_burst\nactions.st+=/tiger_palm\n\nactions.aoe+=/thunder_focus_tea,if=active_enemies<=3\nactions.aoe+=/vivify,if=buff.zen_pulse.up\nactions.aoe+=/rising_sun_kick,if=active_enemies<=3||settings.aoe_rsk\nactions.aoe+=/blackout_kick,if=!talent.teachings_of_the_monastery||buff.teachings_of_the_monastery.up&active_enemies<=3\nactions.aoe+=/chi_burst\nactions.aoe+=/spinning_crane_kick\n\nactions.crane+=/renewing_mist,if=time_to_max_charges<=gcd.max\nactions.crane+=/thunder_focus_tea,if=talent.ancient_teachings&buff.ancient_teachings.remains<gcd.max\nactions.crane+=/essence_font,if=talent.ancient_teachings&buff.ancient_teachings.remains<gcd.max\nactions.crane+=/jadefire_stomp,if=talent.ancient_teachings&buff.ancient_teachings.remains<gcd.max\nactions.crane+=/enveloping_mist,if=buff.invoke_chiji.stack>1\nactions.crane+=/rising_sun_kick\nactions.crane+=/spinning_crane_kick,if=active_enemies>3||active_enemies>1&!talent.ancient_concordance&!talent.awakened_jadefire\nactions.crane+=/blackout_kick\nactions.crane+=/tiger_palm",
["author"] = "Aikanaka",
},
},
},
},
}
