--if isClient() then sendClientCommand(module, command, args) end -- to send here
local function onCommand(_module, _command, _dataA, _dataB)
	--serverside
	if _module=="ConfigFile" then
		if _command=="Load" then
			EasyConfig_Chucked.loadConfig(_dataB.online)
		elseif _command == "Save" then
			EasyConfig_Chucked.saveConfig(_dataB.online)
		end
	end
end
Events.OnClientCommand.Add(onCommand)--/client/ to server
--sendServerCommand("sendLooper", _dataB.command, _dataB) -- to send to /client