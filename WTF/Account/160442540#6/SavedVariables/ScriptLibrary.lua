
RuntimeEditorDB = nil
ScriptLibraryDB = {
["frame_scale"] = {
["scale"] = 1,
},
["main_frame"] = {
["y"] = 20.59973335266113,
["x"] = -30.400146484375,
["point"] = "BOTTOMRIGHT",
["scale"] = 1,
},
["options"] = {
["auto_open"] = false,
["text_size"] = 11,
["scale"] = 1,
["always_on_top"] = false,
["frame_strata"] = "LOW",
},
["saved_objects"] = {
{
["Name"] = "Your New Script",
["Revision"] = 95,
["Time"] = 1731138692,
["UseXPCall"] = false,
["Version"] = 2,
["AutoRun"] = false,
["Pages"] = {
{
["EditTime"] = 1727439361,
["CursorPosition"] = 252,
["Name"] = "page 1",
["Code"] = "function (arg1, arg2)\n    print(UnitBlock(\"player\"))\n    print(GetBlockChance())\nend",
["ScrollValue"] = 1,
},
},
["Desc"] = "",
},
{
["Version"] = 2,
["Revision"] = 15,
["Name"] = "Your New Script",
["Pages"] = {
{
["EditTime"] = 1728155501,
["CursorPosition"] = 913,
["Name"] = "page 1",
["Code"] = "function (arg1, arg2)\n    \n    local function GetBuffStacksByName(unit, buffName)\n        local name, _, count = AuraUtil.FindAuraByName(buffName, unit, \"HELPFUL\")\n        if name then\n            return count or 0\n        end\n        return 0 -- 如果没找到buff，返回0层数\n    end\n    \n    local buffStacks = GetBuffStacksByName(\"player\", \"风之舞\")\n    print(\"当前Buff层数为:\", buffStacks)\n    \n    \nend",
["ScrollValue"] = 1,
},
},
["Time"] = 1731138685,
["AutoRun"] = false,
["UseXPCall"] = false,
["Desc"] = "",
},
{
["Version"] = 2,
["Revision"] = 3,
["Time"] = 1731138686,
["Pages"] = {
{
["EditTime"] = 1731133252,
["CursorPosition"] = 2006,
["Name"] = "page 1",
["Code"] = "function (arg1, arg2)\n    local function GetAuraDetails(unit, auraName)\n        local name, icon, count, debuffType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod = AuraUtil.FindAuraByName(auraName, unit, \"HELPFUL\")\n        if name then\n            print(\"名称:\", name)\n            print(\"图标:\", icon)\n            print(\"层数:\", count or 0)\n            print(\"Debuff类型:\", debuffType or \"N/A\")\n            print(\"持续时间:\", duration)\n            print(\"到期时间:\", expirationTime)\n            print(\"施法者:\", source)\n            print(\"是否可被偷取:\", isStealable)\n            print(\"法术ID:\", spellId)\n            print(\"是否BossDebuff:\", isBossDebuff)\n        else\n            print(auraName .. \" 未找到。\")\n        end\n    end\n    \n    GetAuraDetails(\"player\", \"和谐化身\")\n    \nend",
["ScrollValue"] = 1,
},
},
["Name"] = "Your New Script",
["AutoRun"] = false,
["UseXPCall"] = false,
["Desc"] = "",
},
{
["Version"] = 2,
["Revision"] = 14,
["Time"] = 1731138697,
["Pages"] = {
{
["EditTime"] = 1731133261,
["CursorPosition"] = 1032,
["Name"] = "page 1",
["Code"] = "function (arg1, arg2)\n    \n    --place your code here\n    local function GetMouseoverNamePlateID()\n        local nameplateFrame = C_NamePlate.GetNamePlateForUnit(\"target\")\n        if nameplateFrame then\n            return nameplateFrame:GetName() -- 获取姓名板的名称\n        else\n            return nil -- 如果没有鼠标指向的姓名板\n        end\n    end\n    \n    -- 测试输出\n    local nameplateID = GetMouseoverNamePlateID()\n    if nameplateID then\n        print(\"当前鼠标指向的姓名板ID: \", nameplateID)\n    else\n        print(\"没有鼠标指向的姓名板。\")\n    end\nend",
["ScrollValue"] = 1,
},
},
["Name"] = "Your New Script",
["AutoRun"] = false,
["UseXPCall"] = false,
["Desc"] = "",
},
{
["Name"] = "Your New Script",
["Revision"] = 26,
["Time"] = 1731138717,
["UseXPCall"] = false,
["Version"] = 2,
["AutoRun"] = false,
["Pages"] = {
{
["EditTime"] = 1731138680,
["CursorPosition"] = 195,
["Name"] = "page 1",
["Code"] = "function (arg1, arg2)\n    \n    --place your code here\n    print(UnitExists(\"mouseover\"))\nend",
["ScrollValue"] = 1,
},
},
["Desc"] = "",
},
},
["last_opened_script"] = 5,
["auto_open"] = false,
["last_object_selected"] = 0,
["last_type"] = 1,
}
