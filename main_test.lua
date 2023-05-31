----local api  = require('telegram-bot-lua.core').configure('1584165136:AAGjQXrPaFByxbPKh4fWstDVP7a96fm7DWU')
----local json = require('dkjson')
----
----function api.on_callback_query(callback_query)
----    api.answer_callback_query(
----            callback_query.id,
----            json.encode(callback_query.from)
----    )
----end
------ https://api.telegram.org/bot<TOKEN>/sendMessage?chat_id=123&text=test&reply_markup={"keyboard": [["Button"]]}
------ {"keyboard":[["Yes","No"]],"resize_keyboard":false,"one_time_keyboard":false,"selective":false}
----
----local keyboard = { ['keyboard'] = {
----    ["button"] = "Yes",
----    ["button"] = "No",
----},
----                   ["resize_keyboard"] = true,
----                   ["one_time_keyboard"] = false,
----                   ["selective"] = false
----}
----
----function api.on_message(message)
----    print("on_message > message:", message.text)
----
----    api.send_message(
----            message.chat.id,
----            'TEST',
----            nil,
----            true,
----            false,
----            nil,
----            --nil
----            keyboard
----    )
----end
----
----api.run()
--
----
----local list = {}
----
----list["1"]  = 123
----list[2]    = "asdas"
----list[3]    = "table"
----
------print(list["1"])
------print(list[2])
----
----local function test(index)
----    if not (index == 5) then
----        return test(index + 1)
----    end
----
----    return index
----end
----
----print(test(1))
----
----local max = (4 > 5) and 1 or 2
----print(max)
--
----local private     = {}
----
----private.ellipsize = "start"
----
----local function ellipsize(ellipsize)
----    if type(ellipsize) == "string" then
----        if ellipsize == "start" or ellipsize == "middle" or ellipsize == "end" then
----            private.ellipsize = ellipsize
----            return private.ellipsize
----        end
----    end
----
----    local ellipsize = {}
----
----    function ellipsize:start()
----        private.ellipsize = "start"
----    end
----    function ellipsize:middle()
----        private.ellipsize = "middle"
----    end
----    function ellipsize:the_end()
----        private.ellipsize = "end"
----    end
----
----    return ellipsize
----end
----
----print(private.ellipsize)
----ellipsize():middle()
----print(private.ellipsize)
----ellipsize("end")
----print(private.ellipsize)
--
----local function run(self)
----    print(self.text) -- HELLO
----end
----
----local promptbox = {}
----
----promptbox.text  = "HELLO"
----promptbox.run   = run
----
----promptbox:run()
--
----local test = nil
----
----local i = 0
----
----while (not test) do
----    i = i + 1
----
----    if (i == 100) then
----        test = "test"
----    end
----end
----
----print("test")
--
----local math = require("math")
----
----function math.sign(x)
----    return x > 0 and 1 or x < 0 and -1 or 0
----end
----
----local function draw(x, y)
----    --while x < 0
----    for i = 1, x do
----        for j = 1, y do
----            print("*")
----        end
----
----        print(" ")
----    end
----end
----
----local squircle = function(w, h, rate, delta)
----    rate      = rate or 2
----    delta     = delta or 0.05
----    local a   = w / 2
----    local b   = h / 2
----    local phi = 0
----
----    -- draw with polar cord
----    while phi < 2 * math.pi do
----        local cosphi = math.cos(phi)
----        local sinphi = math.sin(phi)
----        local x      = a * math.pow(math.abs(cosphi), 1 / rate) * math.sign(cosphi)
----        local y      = b * math.pow(math.abs(sinphi), 1 / rate) * math.sign(sinphi)
----
----        print(x, -y)
----        draw(x, y)
----
----        phi = phi + delta
----    end
----end
----
----squircle(10, 10)
--
----local args    = {}
----
----local default = {
----    -- See "table 1" of the spec about the default name
----    id           = 1,
----    name         = args.name or "default",
----    selected     = args.selected == true,
----    position     = args.position,
----    icon         = args.icon,
----    notification = args.notification,
----    icon_only    = args.icon_only or false,
----    action       = args.action or function()
----        print("id", id, "name", args.name)
----    end
----}
----
----default.action()
--
--LuaTypes    = {
--	null     = "nil",
--	boolean  = "boolean",
--	number   = "number",
--	string   = "string",
--	func     = "function",
--	userdata = "userdata",
--	thread   = "thread",
--	table    = "table",
--	screen   = "screen"
--}
--
--local wmapi = {}
--function wmapi:is_empty(s)
--	-- if nil or "" - error "true"
--	return s == nil or s == ""
--end
--
--local __private  = {}
--__private.markup = ""
--
--local function markup(markup)
--	if type(markup) == LuaTypes.string then
--		print(">>", __private.markup)
--		__private.markup = markup
--	end
--
--	return __private.markup
--end
--
--local information = "Привет. Давай такой сценарий: на смешениях каналов 0% ТВ, 50% ТВ, 100%ТВ выполнить следующее:"
--
--local function sublen(message, len)
--	local sub_str = ""
--
--	-- итератор utf8.codes() возвращает кодовые точки символов в строке
--	for _, code in utf8.codes(message) do
--		sub_str = sub_str .. utf8.char(code) -- добавляем символ в подстроку
--		if utf8.len(sub_str) >= len then
--			break -- прерываем цикл после добавления 2 символов в подстроку
--		end
--	end
--
--	return sub_str
--end
--
----print(information)
--print(sublen(information, 11))


local lfs = require("lfs")

-- Функция для поиска директории в подпапках
local function findDirectory(dir, targetDirectory, size)
	local pathTable = {}

	for entry in lfs.dir(dir) do
		if entry ~= "." and entry ~= ".." then
			local entryPath  = dir .. "/" .. entry
			local attributes = lfs.attributes(entryPath)

			if attributes and attributes.mode == "directory" then
				if entry == targetDirectory then
					--print("entryPath", entryPath)
					table.insert(pathTable, { entryPath .. "/", size })
					return pathTable
				else
					local subdirectoryPath = findDirectory(entryPath, targetDirectory, entry)
					for i, path in ipairs(subdirectoryPath) do
						table.insert(pathTable, path)
					end
				end
			end
		end
	end

	return pathTable
end

-- Ищем директорию в подпапках
local foundDirectory = findDirectory("/usr/share/icons", "apps")

for _, p in ipairs(foundDirectory) do
	print(p[1], p[2])
end
