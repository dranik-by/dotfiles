---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hp-envy-x360-15-ee0020nn.
--- DateTime: 8/31/21 1:07 PM
---

-- widget  = wibox.container.margin,

local wibox  = require("wibox")

local margin = {}

function margin:init(args)
    local args = args or {}

    return wibox.widget {
        args.widget or {},

        top    = args.top or 12,
        left   = args.left or 3,
        bottom = args.bottom or 3,
        right  = args.right or 3,

        layout = wibox.container.margin
    }
end

return setmetatable(margin, { __call = function(_, ...)
    return margin:init(...)
end })
