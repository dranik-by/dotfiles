local naughty = require("lib.naughty")
local cst     = require("lib.naughty.constants")

--local ButtonRole   = {
--  InvalidRole   = -1,
--  AcceptRole    = 0,
--  RejectRole    = 1,
--  DestructiveRole = 2,
--  ActionRole    = 3,
--  HelpRole    = 4,
--  YesRole     = 5,
--  NoRole      = 6,
--  ResetRole     = 7,
--  ApplyRole     = 8,
--  NRoles      = 9
--};
--
--local StandardButton = {
--  NoButton    = 0x00000000,
--  Ok        = 0x00000400,
--  Save      = 0x00000800,
--  SaveAll     = 0x00001000,
--  Open      = 0x00002000,
--  Yes       = 0x00004000,
--  YesToAll    = 0x00008000,
--  No        = 0x00010000,
--  NoToAll     = 0x00020000,
--  Abort       = 0x00040000,
--  Retry       = 0x00080000,
--  Ignore      = 0x00100000,
--  Close       = 0x00200000,
--  Cancel      = 0x00400000,
--  Discard     = 0x00800000,
--  Help      = 0x01000000,
--  Apply       = 0x02000000,
--  Reset       = 0x04000000,
--  RestoreDefaults = 0x08000000,
--  FirstButton   = 0x00000400, -- Ok
--  LastButton    = 0x08000000, -- RestoreDefaults
--
--  YesAll      = 0x00008000, -- YesToAll
--  NoAll       = 0x00020000, -- NoToAll,
--
--  Default     = 0x00000100,
--  Escape      = 0x00000200,
--  FlagMask    = 0x00000300,
--  ButtonMask    = 0x00000300, -- FlagMask
--};

local type    = {
	question    = "question",
	information = "information",
	warning     = "warning",
	critical    = "critical",
	error       = "error",
	about       = "about",
}

local function message(type, app_name, title, text, app_icon, urgency)
	naughty.dbus.notification(type, app_name, title, text, app_icon, urgency)
end

local function new()
	local ret = {}

	function ret:question(app_name, title, text, app_icon)
		message(type.question, app_name, title, text, app_icon, cst.config._urgency.low)
	end

	function ret:information(app_name, title, text, app_icon, _)
		message(type.information, app_name, title, text, app_icon, cst.config._urgency.ok)
	end

	function ret:warning(app_name, title, text, app_icon)
		message(type.warning, app_name, title, text, app_icon, cst.config._urgency.warning)
	end

	function ret:critical(app_name, title, text, app_icon)
		message(type.critical, app_name, title, text, app_icon, cst.config._urgency.critical)
	end

	function ret:error(app_name, title, text, app_icon)
		message(type.error, app_name, title, text, app_icon, cst.config._urgency.error)
	end

	function ret:about(app_name, title, text, app_icon)
		message(type.about, app_name, title, text, app_icon, cst.config._urgency.info)
	end

	return ret
end

return new()
