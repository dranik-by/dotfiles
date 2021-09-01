--local switch = function(param, case_table)
--    local case = case_table[param]
--
--    if case then
--        return case()
--    end
--
--    local def = case_table['default']
--
--    return def and def() or nil
--end
--
--local a      = 110
--
--switch(a, {
--    [1] = function()
--        -- for case 1
--        print("Case 1.")
--    end,
--    [2]       = function()
--        -- for case 2
--        print("Case 2.")
--    end,
--    [3]       = function()
--        -- for case 3
--        print("Case 3.")
--    end
--})

--%a	abbreviated weekday name (e.g., Wed)
--%A	full weekday name (e.g., Wednesday)
--%b	abbreviated month name (e.g., Sep)
--%B	full month name (e.g., September)
--%c	date and time (e.g., 09/16/98 23:48:10)
--%d	day of the month (16) [01-31]
--%H	hour, using a 24-hour clock (23) [00-23]
--%I	hour, using a 12-hour clock (11) [01-12]
--%M	minute (48) [00-59]
--%m	month (09) [01-12]
--%p	either "am" or "pm" (pm)
--%S	second (10) [00-61]
--%w	weekday (3) [0-6 = Sunday-Saturday]
--%x	date (e.g., 09/16/98)
--%X	time (e.g., 23:48:10)
--%Y	full year (1998)
--%y	two-digit year (98) [00-99]
--%%	the character `%´

local date_table = os.date("*t")

--print(date_table.wday)
--print(date_table.yday)

print(os.date("%a %H:%M:%S"))
print(os.date("%A"))
print(os.date("%B %d %Y"))

local ms                   = string.match(tostring(os.clock()), "%d%.(%d+)")
local hour, minute, second = date_table.hour, date_table.min, date_table.sec
local year, month, day     = date_table.year, date_table.month, date_table.wday
local result               = string.format("%d-%d-%d %d:%d:%d:%s", year, month, day, hour, minute, second, ms)

print(result)

function screen_primary()
    print(1)
end

function screen_primary(s)
    print(s or 2)
end

print(screen_primary())

local fun = function(test)
    print(test)
end

fun(1)