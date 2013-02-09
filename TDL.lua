local TDL = LibStub("AceAddon-3.0"):NewAddon("TDL")

function TDL:OnInitialize()
-- do init tasks here, like loading the Saved Variables, 
-- or setting up slash commands.

-- init the addon options window
-- run startMonitoring()
end

function TDL:OnEnable()
-- so far not needed?

-- Do more initialization here, that really enables the use of your addon.
-- Register Events, Hook functions, Create Frames, Get information from 
-- the game that wasn't available in OnInitialize
end

function TDL:OnDisable()
-- so far not needed?

-- Unhook, Unregister Events, Hide frames that you created.
-- You would probably only use an OnDisable if you want to 
-- build a "standby" mode, or be able to toggle modules on/off.
end

function startMonitoring
-- setup things to monitor based on settings
	-- read from DB
	-- check what timers to enable
	-- print timers
	-- register event handlers for timer completion {On Boss Kill/On Quest Complete}
	-- return
end

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