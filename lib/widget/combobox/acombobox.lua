local wibox     = require("wibox")
local beautiful = require("beautiful")

local combobox  = {}

function combobox:init()
    local ret       = wmapi.widget:base("checkbox")

    local __private = {}

    __private.list  = {}

    local widget    = wibox.widget({
        type               = "checkbox",

        --checked  = true,
        --color    = beautiful.bg_normal,
        --paddings = 2,
        --shape    = gears.shape.circle,

        color              = beautiful.bg_normal,
        bg                 = '#ff00ff',
        border_width       = 3,
        paddings           = 4,
        border_color       = '#0000ff',
        check_color        = '#ff0000',
        check_border_color = '#ffff00',
        check_border_width = 1,

        paddings           = 2,

        widget             = wibox.widget.checkbox,
    })

    --local bg_enter   = beautiful.mouse_enter
    --local bg_leave   = beautiful.mouse_leave
    --local bg_press   = beautiful.button_press
    --local bg_release = beautiful.button_release
    --
    --ret.widget:connect_signal(
    --        signals.mouse.enter,
    --        function(self)
    --            self.bg = bg_press
    --            local w = _G.mouse.current_wibox
    --            if w then
    --                self.old_cursor, self.old_wibox = w.cursor, w
    --                w.cursor                        = "hand1"
    --            end
    --        end
    --)
    --
    --ret.widget:connect_signal(
    --        signals.mouse.leave,
    --        function(self)
    --            self.bg = bg_release
    --            if self.old_wibox then
    --                self.old_wibox.cursor = self.old_cursor
    --                self.old_wibox        = nil
    --            end
    --        end
    --)
    --
    --ret.widget:connect_signal(
    --        signals.button.release,
    --        function(self)
    --            self.bg            = beautiful.button_release
    --            ret.widget.checked = not ret.widget.checked
    --        end
    --)

    function ret:insert(name)
        table.insert(__private.list, name)
    end

    function ret:get()
        return widget
    end

    return ret
end

return setmetatable(combobox, { __call = function(_)
    return combobox
end })
