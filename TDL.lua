local TDL = LibStub("AceAddon-3.0"):NewAddon("TDL", "AceConsole-3.0", "AceDB-3.0", "AceEvent-3.0", "AceTimer-3.0-3.0", "AceGUI-3.0-3.0-3.0")
local realm_defaults = {
	server_reset = 400
	weekly_reset = 3 -- Most shit resets on Tuesday past midnight (wed)
	raid_reset = 4 -- Raid resets on Wednesday past midnight (thu)
}
	
function TDL:OnInitialize()
-- do init tasks here, like loading the Saved Variables, 
-- or setting up slash commands.

	-- Realm settings
	self.db.realm = LibStub("AceDB-3.0"):New("TDL-DB", realm_defaults)

-- init the addon options window
-- run startMonitoring()
end

function TDL:OnEnable()
-- Do more initialization here, that really enables the use of your addon.
-- Register Events, Hook functions, Create Frames, Get information from 
-- the game that wasn't available in OnInitialize

-- Initialize settings now that we have access to certain variables.
	-- Character-specific settings
	local playerName = UnitName("player")
	local playerObject = self.db.profile.playerName
	local timers = playerObject.timers
	-- Profile exists
	if 	playerObject ~= nil then
		-- Empty table or doesn't exist
		if next(timers) == nil then
			playerObject = {}
		-- We have a table, mens!
		else 
			for k,v in pairs(timers) do
				if timers.done == false then
					-- Create undone message
					print timers.name .. " is not done yet."
					
					-- Create timer
					
					
					-- Register the complete handlers
					if timers.type == "quest" then
						-- Create Frame for Event Handler
							-- Frame will reference function
					elseif timers.type == "raidboss"
				else
					-- Create completed message
					print timers.name .. " has already been done!"
				end
			end
		end
	end
end

function TDL:OnDisable()
-- so far not needed?

-- Unhook, Unregister Events, Hide frames that you created.
-- You would probably only use an OnDisable if you want to 
-- build a "standby" mode, or be able to toggle modules on/off.
end

function listenToQuest() {
	-- Create XML Frame
	local frame = CreateFrame()
	frame:RegisterEvent("QUEST_WATCH_UPDATE")
	local function eventHandler(self, event, ...)
		-- Callback
		onQuestComplete()
	end
	-- Use frame:RegisterEvent("eventName") during OnLoad
}

function onQuestComplete() {
	-- Use frame:UnregisterEvent() or frame:UnregisterAllEvents()
}

function finishMonitoring
-- callback to "finish" event
	-- destroy timer
	-- save to DB
	-- print completion
	-- return
end

function viewMonitors
-- load addon options window
-- load from DB
-- register save handlers?
end

function saveMonitor -- should do add/update/delete operations
-- when saving, check if id exists
	-- if id exists, check if data null
		-- if data not null, update the DB
		-- if data null, delete from DB
	-- if id not exists, create to DB
-- call startMonitoring()
end

function addMonitorUI
-- add a new row
end

-- Incomplete, Work on this next time
function calculateTimeLeft(timetype, timevalue)
	local monitored_time, current_time = time()
	local monitored_timetable = date("*t")
	
	if timetype == "weekly" then
		return monitored_timetable.wday 
	elseif timetype == "daily" then
end