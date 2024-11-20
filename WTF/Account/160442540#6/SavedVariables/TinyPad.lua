
TinyPadSettings = {
["FontSize"] = 2,
["XPos"] = 945.320068359375,
["PinBookmarks"] = false,
["FontFamily"] = 1,
["SharePosition"] = false,
["HideTooltips"] = false,
["OpenOnLogin"] = false,
["LargerScale"] = true,
["HideMoreTooltips"] = false,
["Width"] = 653.0000610351562,
["EditorCtrlKeys"] = true,
["Transparency"] = false,
["ShowMinimapButton"] = false,
["StartOnPage1"] = false,
["Height"] = 590.0000610351562,
["YPos"] = 253.5999755859375,
["NoFade"] = false,
["Lock"] = false,
}
TinyPadPages = {
"local spellID = 100780  -- 猛虎掌的spellID\n\nlocal costTable = GetSpellPowerCost(spellID)\nfor _, costInfo in pairs(costTable) do\n    if costInfo.type == Enum.PowerType.Energy then\n        print(\"猛虎掌所需能量: \" .. costInfo.cost)\n    end\nend\n",
}
