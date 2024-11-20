-- 定义技能ID
local TIGER_PALM_ID = 100780                -- 猛虎掌
local WINDWALKER_SPEC_ID = 269              -- 踏风专精的ID

-- 其他技能ID
local SKILLS_TO_SHOW_CHI = {
    [392983] = true,  -- 风领主之击
    [107428] = true,  -- 旭日东升踢
    [113656] = true,  -- 怒雷破
    [100784] = true,  -- 幻灭踢
    [101546] = true   -- 神鹤引项踢
}

-- 创建一个框架，用于监听事件
local frame = CreateFrame("Frame")

-- 创建一个更新资源值显示的函数（能量或真气）
local function UpdateResourceDisplay(button, isChi)
    if button and button.EnergyLabel then
        -- 如果是显示真气
        if isChi then
            local chi = UnitPower("player", Enum.PowerType.Chi)
            button.EnergyLabel:SetText(chi)
        else
            -- 显示能量值
            local energy = UnitPower("player", Enum.PowerType.Energy)
            button.EnergyLabel:SetText(energy)
        end
        button.EnergyLabel:Show() -- 确保能量或真气标签可见
    end
end

-- 初始化显示能量或真气值的标签
local function InitResourceDisplay(button, isChi)
    -- 检查是否已经存在 EnergyLabel，如果没有则创建
    if not button.EnergyLabel then
        -- 创建文字框架
        button.EnergyLabel = button:CreateFontString(nil, "OVERLAY")
        button.EnergyLabel:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
        button.EnergyLabel:SetPoint("TOPLEFT", button, "TOPLEFT", 2, -2)
    end
    -- 显示初始能量或真气值
    UpdateResourceDisplay(button, isChi)
end

-- 检查玩家是否是踏风专精
local function IsWindwalkerSpec()
    local currentSpec = GetSpecialization()  -- 获取当前专精索引
    local specId = GetSpecializationInfo(currentSpec)  -- 获取当前专精的ID
    return specId == WINDWALKER_SPEC_ID  -- 如果是踏风专精，返回true
end

-- 遍历所有动作条按钮，检测是否绑定了猛虎掌或其他显示真气的技能
local function CheckAllActionButtons()
    if not IsWindwalkerSpec() then
        -- 如果不是踏风专精，隐藏所有能量标签
        for _, barPrefix in ipairs({
            "ActionButton", "MultiBarBottomLeftButton", "MultiBarBottomRightButton", 
            "MultiBarRightButton", "MultiBarLeftButton", "MultiBar5Button", "MultiBar6Button"
        }) do
            for i = 1, 12 do
                local button = _G[barPrefix .. i]
                if button and button.EnergyLabel then
                    button.EnergyLabel:Hide()  -- 隐藏所有能量标签
                end
            end
        end
        return  -- 如果不是踏风专精，退出函数
    end

    -- 如果是踏风专精，继续检查所有动作条按钮
    local actionBars = {
        "ActionButton",              -- 主动作条1
        "MultiBarBottomLeftButton",  -- 动作条2
        "MultiBarBottomRightButton", -- 动作条3
        "MultiBarRightButton",       -- 动作条4
        "MultiBarLeftButton",        -- 动作条5
        "MultiBar5Button",           -- 动作条6
        "MultiBar6Button"            -- 动作条7
    }

    -- 遍历动作条
    for _, barPrefix in ipairs(actionBars) do
        -- 假设每个动作条最多有12个按钮
        for i = 1, 12 do
            local button = _G[barPrefix .. i]
            if button then
                -- 获取按钮绑定的动作类型和ID
                local actionType, actionId = GetActionInfo(button.action)
                
                -- 检查动作是否为猛虎掌或显示真气的技能
                if actionId == TIGER_PALM_ID then
                    InitResourceDisplay(button, false)  -- 显示能量
                elseif SKILLS_TO_SHOW_CHI[actionId] then
                    InitResourceDisplay(button, true)  -- 显示真气
                elseif button.EnergyLabel then
                    button.EnergyLabel:Hide()  -- 如果按钮不是目标技能，隐藏能量/真气标签
                end
            end
        end
    end
end

-- 注册事件：当玩家的能量值或真气值变化时触发
frame:RegisterEvent("UNIT_POWER_FREQUENT")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("ACTIONBAR_SLOT_CHANGED")
frame:RegisterEvent("SPELLS_CHANGED")
frame:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")  -- 专精改变事件

-- 事件处理函数
frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "UNIT_POWER_FREQUENT" and arg1 == "player" then
        CheckAllActionButtons()  -- 更新能量或真气显示
    elseif event == "PLAYER_ENTERING_WORLD" or event == "SPELLS_CHANGED" or event == "ACTIONBAR_SLOT_CHANGED" or event == "ACTIVE_TALENT_GROUP_CHANGED" then
        CheckAllActionButtons()  -- 初始化所有动作条按钮的能量或真气显示
    end
end)
