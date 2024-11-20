
Gladius2DB = {
["profileKeys"] = {
["彭浦新村 - 芬里斯"] = "Default",
["哥斯拉之魂 - 主宰之剑"] = "Default",
["共康路 - 芬里斯"] = "Default",
},
["profiles"] = {
["哥斯拉之魂 - 主宰之剑"] = {
["auraVersion"] = 1,
["tagsVersion"] = 4,
},
["彭浦新村 - 芬里斯"] = {
},
["Default"] = {
["modules"] = {
["Dispel"] = false,
},
["tags"] = {
["maxhealth"] = {
["func"] = "function(unit)\nreturn not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nend",
["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
},
["class:short"] = {
["preparation"] = true,
["func"] = "function(unit)\nreturn not Gladius.test and Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class]..\":short\"] or Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]..\":short\"]\nend",
["events"] = "UNIT_NAME_UPDATE",
},
["health:short"] = {
["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
},
["class"] = {
["preparation"] = true,
["func"] = "function(unit)\nreturn not Gladius.test and LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class] or LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]\nend",
["events"] = "UNIT_NAME_UPDATE",
},
["power:short"] = {
["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
["events"] = "UNIT_POWER_UPDATE UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
},
["race"] = {
["func"] = "function(unit)\nreturn not Gladius.test and UnitRace(unit) or Gladius.testing[unit].unitRace\nend",
["events"] = "UNIT_NAME_UPDATE",
},
["maxpower:short"] = {
["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
},
["power"] = {
["func"] = "function(unit)\nreturn not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nend",
["events"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
},
["name:status"] = {
["func"] = "function(unit)\nreturn UnitIsDeadOrGhost(unit) and Gladius.L[\"DEAD\"] or (UnitName(unit) or unit)\nend",
["events"] = "UNIT_NAME_UPDATE UNIT_HEALTH",
},
["spec"] = {
["preparation"] = true,
["func"] = "function(unit)\nreturn Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nend",
["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
},
["power:percentage"] = {
["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nlocal maxPower = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nreturn strformat(\"%.1f%%\", (power / maxPower * 100))\nend",
["events"] = "UNIT_POWER_UPDATE UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
},
["name"] = {
["func"] = "function(unit)\nreturn UnitName(unit) or unit\nend",
["events"] = "UNIT_NAME_UPDATE",
},
["spec:short"] = {
["preparation"] = true,
["func"] = "function(unit)\nlocal spec = Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nif (spec == nil or spec == \"\") then\nreturn \"\"\nend\nreturn Gladius.L[spec..\":short\"]\nend",
["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
},
["health:percentage"] = {
["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nlocal maxHealth = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nreturn strformat(\"%.1f%%\", (health / maxHealth * 100))\nend",
["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
},
["maxpower"] = {
["func"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
},
["maxhealth:short"] = {
["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
},
["health"] = {
["func"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
},
},
["trinketOffsetX"] = 0,
["classIconCrop"] = true,
["RacialOffsetX"] = 40,
["tagsVersion"] = 4,
["locked"] = true,
["y"] = {
["arena1"] = 514.9329580545309,
},
["bottomMargin"] = 90,
["classIconCooldown"] = true,
["castBarDetached"] = true,
["trinketDetached"] = true,
["classIconCooldownReverse"] = true,
["castBarHeight"] = 30,
["drTrackerCooldown"] = true,
["auraVersion"] = 1,
["RacialDetached"] = true,
["x"] = {
["arena1"] = 909.8646918296217,
},
},
["共康路 - 芬里斯"] = {
["auraVersion"] = 1,
["tagsVersion"] = 4,
["x"] = {
["arena1"] = 855.466252708422,
},
["y"] = {
["arena1"] = 540.5330971638286,
},
},
},
}
