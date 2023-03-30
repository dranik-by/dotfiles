local wibox     = require("wibox")
local radiobox  = require("radiobox")

local hradiobox = {}

function hradiobox:init()
    local ret  = {}

    ret.res    = wibox.widget({
        layout = wibox.layout.fixed.horizontal
    })

    ret.widget = wibox.widget({
        widget = wibox.container.background,
    })

    ret.table  = {}

    local function set_widget(...)
        for i = 1, select("#", ...) do
            local item = select(i, ...)
            if item then
                local widget = item.widget
                if not widget then
                    widget = item
                end

                widget:connect_signal(
                        event.signals.button.release,
                        function()
                            for _, item in ipairs(ret.table) do
                                item:disable()
                            end

                            item:enable()
                        end
                )

                table.insert(ret.table, item)

                ret.res:add(widget)
            end
        end

        ret.widget:set_widget(ret.res)
    end

    function ret:add_radiobox(text, func)
        local text            = text or "checkbox"
        local func            = func or function()
            log:debug("radiobox:init (" .. text .. ")")
        end

        local widget_radiobox = radiobox:create(text, func)
        set_widget(widget_radiobox)
    end

    function ret:get()
        self.widget.type = "radiobox"
        return self.widget
    end

    return ret
end

return hradiobox