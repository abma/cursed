--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
  return {
    name      = "Chili Theme",
    desc      = "v0.01 Set the Chili theme.",
    author    = "CarRepairer",
    date      = "2010-06-06",
    license   = "GNU GPL, v2 or later",
    layer     = -1000,
    enabled   = true,
  }
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local echo = Spring.Echo

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local Chili
local cycle = 1
local themes = {
	cursed = 'Bones',
	imperials = 'Imperial',
}
local cursors = {
	cursed = 'cursed',
	imperials = 'imperial',
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local function SetTheme()
	local myTeamID = Spring.GetMyTeamID()
	local side = select(5, Spring.GetTeamInfo(myTeamID))
	
	if not Chili then
		Chili = WG.Chili
	end
	
	if Chili then
		Chili.theme.skin.general.skinName = themes[side] or 'Bones'
	end
	if WG.crude and WG.crude.SetCursor then
		WG.crude.SetCursor( cursors[side] )
	end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--[[ chili skin won't change unless windows or luaui gets reloaded
function widget:Update()
	cycle = cycle % 300 +1
	if cycle == 1 then
		SetTheme()
	end
end]]--

function widget:Initialize()
	SetTheme()
end


