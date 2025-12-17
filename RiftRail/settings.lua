-- settings.lua
-- 确保 data 表存在
if not data then
    data = {}
end

data:extend({
    -- [新增] Cybersyn 通知显示开关
    {
        type = "bool-setting",
        name = "rift-rail-show-cybersyn-notifications", -- 代码中使用的内部名称
        setting_type = "runtime-per-user",              -- 每个玩家单独设置
        default_value = true,                           -- 默认开启
        order = "a",                                    -- 排序
        -- 本地化键值 (会自动去 strings.cfg 找对应的翻译)
        localised_name = { "mod-setting-name.rift-rail-show-cybersyn-notifications" },
    },
    -- [新增] Cybersyn 全局提示开关（玩家个性化）
    {
        type = "bool-setting",
        name = "rift-rail-show-cybersyn-global", -- 控制是否看到全局 Cybersyn 提示
        setting_type = "runtime-per-user",       -- 每个玩家单独设置
        default_value = true,                     -- 默认开启
        order = "a-b",                           -- 紧跟通知开关之后
        localised_name = { "mod-setting-name.rift-rail-show-cybersyn-global" },
        localised_description = { "mod-setting-description.rift-rail-show-cybersyn-global" },
    },
    -- 追加在最后一个设置的后面，别忘了逗号
    {
        type = "bool-setting",
        name = "rift-rail-debug-mode",   -- 代码中使用的内部名称
        setting_type = "runtime-global", -- 全局运行时设置
        default_value = false,           -- 默认关闭
        order = "z",                     -- 放在设置菜单的末尾
        localised_name = { "mod-setting-name.rift-rail-debug-mode" },
    },
    -- [新增] 紧急修复开关
    {
        type = "bool-setting",
        name = "rift-rail-reset-colliders",
        setting_type = "runtime-global", -- 地图设置，只有管理员能改
        default_value = false,
        order = "z-b",                   -- 排在最后
        localised_name = { "mod-setting-name.rift-rail-reset-colliders" },
        localised_description = { "mod-setting-description.rift-rail-reset-colliders" },
    },
})
