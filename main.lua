----local switch = function(param, case_table)
----    local case = case_table[param]
----
----    if case then
----        return case()
----    end
----
----    local def = case_table['default']
----
----    return def and def() or nil
----end
----
----local a      = 110
----
----switch(a, {
----    [1] = function()
----        -- for case 1
----        print("Case 1.")
----    end,
----    [2]       = function()
----        -- for case 2
----        print("Case 2.")
----    end,
----    [3]       = function()
----        -- for case 3
----        print("Case 3.")
----    end
----})
--
----%a    abbreviated weekday name (e.g., Wed)
----%A    full weekday name (e.g., Wednesday)
----%b    abbreviated month name (e.g., Sep)
----%B    full month name (e.g., September)
----%c    date and time (e.g., 09/16/98 23:48:10)
----%d    day of the month (16) [01-31]
----%H    hour, using a 24-hour clock (23) [00-23]
----%I    hour, using a 12-hour clock (11) [01-12]
----%M    minute (48) [00-59]
----%m    month (09) [01-12]
----%p    either "am" or "pm" (pm)
----%S    second (10) [00-61]
----%w    weekday (3) [0-6 = Sunday-Saturday]
----%x    date (e.g., 09/16/98)
----%X    time (e.g., 23:48:10)
----%Y    full year (1998)
----%y    two-digit year (98) [00-99]
----%%    the character `%´
--
--local date_table = os.date("*t")
--
----print(date_table.wday)
----print(date_table.yday)
--
--print(os.date("%a %H:%M:%S"))
--print(os.date("%A"))
--print(os.date("%B %d %Y"))
--
--
--local test = {
--    event      = require("wmapi.event"),
--    timer      = require("wmapi.timer"),
--    markup     = require("wmapi.markup"),
--    widget     = require("wmapi.widget.widget"),
--    containers = require("wmapi.container.container"),
--    wmapi      = require("wmapi.wmapi"),
--}
--
--test.
--
--local ms                   = string.match(tostring(os.clock()), "%d%.(%d+)")
--local hour, minute, second = date_table.hour, date_table.min, date_table.sec
--local year, month, day     = date_table.year, date_table.month, date_table.wday
--local result               = string.format("%d-%d-%d %d:%d:%d:%s", year, month, day, hour, minute, second, ms)
--
--print(result)
--
--function screen_primary()
--    print(1)
--end
--
--function screen_primary(s)
--    print(s or 2)
--end
--
--print(screen_primary())
--
--local fun = function(test)
--    print(test)
--end
--
--fun(1)


----function extended (child, parent)
----    setmetatable(child, { __index = parent })
----end
--function extend(parent)
--    local child = {}
--    setmetatable(child, { __index = parent })
--    return child
--end
--
--local Person = {}
--function Person:new(name)
--
--    local private = {}
--    private.age   = 18
--
--    local public  = {}
--    public.name   = name or "Вася"
--
--
--    --это защищенный метод, его нельзя переопределить
--    function public:getName()
--        return "Person protected " .. self.name
--    end
--
--    --этот метод можно переопределить
--    function Person:getName2()
--        return "Person " .. self.name
--    end
--
--    setmetatable(public, self)
--
--    self.__index = self;
--
--    return public
--end
--
----создадим класс, унаследованный от Person
--local Woman = extend(Person)
----extended(Woman, Person)  --не забываем про эту функцию
--
----переопределим метод setName
--function Woman:getName2()
--    return "Woman " .. self.name
--end
--
--local masha = Woman:new()
--print(masha:getName2())  --> Woman Вася
--
----вызываем метод родительского класса
--print(Person.getName2(masha)) --> Person Вася
--
--
--if nil then
--    print("asd")
--end


--local stdout = {
--    buf = {},
--    out = {},
--}
--function signs(stdout, signs)
--    local signs = signs or ""
--    local str   = stdout:gsub("%s+", signs)
--    str         = string.gsub(str, "%s+", signs)
--
--    return str
--end
--
--local s = "561%"
--
--print(s:sub(1, -2))
--

--local signal = require("posix.signal")
--
--signal.signal(signal.SIGINT, function(signum)
--    io.write("\n")
--    -- put code to save some stuff here
--    --os.exit(128 + signum)
--end)


--function test(a)
--    a = 10
--end
--
--local a = 5
--
--print(a)
--test(a)
--print(a)

--local lfs = require("lfs")
--
--local open = io.open
--
--local function read_file(path)
--    local file = open(path, "rb") -- r read mode and b binary mode
--    if not file then return nil end
--    local content = file:read "*a" -- *a or *all reads the whole file
--    file:close()
--    return content
--end
--
--local fileContent = read_file("/sys/class/backlight/intel_backlight/max_brightness");
--print (fileContent);

--require("dirtree")
--print(package.path)


local logging = {}

local TypeLog = {
    -- The DEBUG Level designates fine-grained instring.formational events that are most
    -- useful to debug an application
    DEBUG = "DEBUG",

    -- The INFO level designates instring.formational messages that highlight the
    -- progress of the application at coarse-grained level
    INFO  = "INFO",

    -- The WARN level designates potentially harmful situations
    WARN  = "WARN",

    -- The ERROR level designates error events that might still allow the
    -- application to continue running
    ERROR = "ERROR",

    -- The FATAL level designates very severe error events that will presumably
    -- lead the application to abort
    FATAL = "FATAL",
}

local posix   = require("posix")
local pid     = posix.getpid('pid')

function message(type, ...)
    local msg
    local date = os.date("%Y-%m-%d %H:%M:%S")

    for i = 1, select("#", ...) do
        local item = select(i, ...)
        if ((msg == nil) or (msg == "")) then
            msg = tostring(item)
        else
            msg = msg .. " " .. tostring(item)
        end
    end

    if ((msg == nil) or (msg == "")) then

    else
        msg = date .. ", [" .. pid .. "] " .. type .. " > " .. msg
        print(msg)
    end
end

-- ([message]|[table]|[format, ...]|[function, ...])
-- Logs a message with DEBUG level.
function logging:debug(...)
    message(TypeLog.DEBUG, ...)
end

-- Logs a message with INFO level.
-- ([message]|[table]|[format, ...]|[function, ...])
function logging:info(...)
    message(TypeLog.INFO, ...)
end

log = logging

log:debug("1", "123", "rwere", 123)
log:info("2", "123", "rwere", 123)