local wibox            = require("wibox")

local horizontallayout = {}

function horizontallayout:init()
    local layout  = {}

    layout.widget = wibox.widget({
        expend      = true,
        homogeneous = false,
        spacing     = 5,

        layout      = wibox.layout.grid,
    })

    function layout:get()
        return self.widget
    end

    layout.col_size = 1

    function layout:add_widget_at(widget, height, width)
        if WidgetType[widget:get().type] then
            widget = widget:get()
        else
            widget = widget
        end

        local height = height or 1
        local width  = width or 1

        self.widget:add_widget_at(widget, 1, layout.col_size, height, width)
        layout.col_size = layout.col_size + 1
    end

    function layout:insert_row()
        l:insert_row(1)
    end

    function layout:remove(index)
        local index = index or 1
    end

    return layout
end

return horizontallayout