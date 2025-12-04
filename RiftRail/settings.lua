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
        localised_name = { "mod-setting-name.rift-rail-show-cybersyn-notifications" }
    }
})
