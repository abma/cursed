local confdata = {}
confdata.title = 'Cursed'
confdata.title_image = LUAUI_DIRNAME .. 'Images/ZK_logo.png'
confdata.default_source_file = 'tc_keys.lua' --the file in ZIP archive where default key is stored.
confdata.mission_keybinds_file = 'tc_keys.lua' --the filename to be used for Mission mod. set this to NIL if want to use mission's name as filename.
-- confdata.regular_keybind_file = LUAUI_DIRNAME .. 'Configs/zk_keys.lua' --for Multiplayer this is automatically set according to modName in epicmenu.lua
--FIXME: find modname instead of using hardcoded mission_keybinds_file name
local color = {
	white = {1,1,1,1},
	yellow = {1,1,0,1},
	gray = {0.5,.5,.5,1},
	darkgray = {0.3,.3,.3,1},
	cyan = {0,1,1,1},
	red = {1,0,0,1},
	darkred = {0.5,0,0,1},
	blue = {0,0,1,1},
	black = {0,0,0,1},
	darkgreen = {0,0.5,0,1},
	green = {0,1,0,1},
	postit = {1,0.9,0.5,1},
	
	grayred = {0.5,0.4,0.4,1},
	grayblue = {0.4,0.4,0.45,1},
	transblack = {0,0,0,0.3},
	transblack2 = {0,0,0,0.7},
	transGray = {0.1,0.1,0.1,0.8},
	
	null = {nil, nil, nil, 1},
	transnull = {nil, nil, nil, 0.3},
	transnull2 = {nil, nil, nil, 0.5},
	transnull3 = {nil, nil, nil, 0.8},
}

color.tooltip_bg = color.transnull3
color.tooltip_fg = color.null
color.tooltip_info = color.cyan
color.tooltip_help = color.green

color.main_bg = color.transnull
color.main_fg = color.null

color.menu_bg = color.null
color.menu_fg = color.null

color.game_bg = color.null
color.game_fg = color.null

color.sub_bg	= color.transnull
color.sub_fg 	= color.null
color.sub_header = color.yellow

color.sub_button_bg = color.null
color.sub_button_fg = color.null

color.sub_back_bg = color.null
color.sub_back_fg = color.null

color.sub_close_bg = color.null
color.sub_close_fg = color.null

color.stats_bg = color.sub_bg
color.stats_fg = color.sub_fg
color.stats_header = color.sub_header

color.context_bg = color.transnull
color.context_fg = color.null
color.context_header = color.yellow

confdata.color = color

local spSendCommands = Spring.SendCommands


confdata.eopt = {}
local path = ''

local function AddOption(option)
	option.path=path
	if not option.key then
		option.key = option.name
	end
	table.insert(confdata.eopt, option)
end

--ShortHand for adding a button
local function ShButton( caption, action2, tooltip, advanced, icon )
	AddOption({
		type='button',
		name=caption,
		desc = tooltip or '',
		action = (type(action2) == 'string' and action2 or nil),
		OnChange = (type(action2) ~= 'string' and action2 or nil),
		key=caption,
		advanced = advanced,
		icon = icon,
	})
end


--ShortHand for adding radiobuttons
local function ShRadio( caption, items,defValue, action2, advanced) 
	AddOption({
		type='radioButton', 
		name=caption,
		key=caption,
		items = items or {},
		value = defValue or '',
		action = (type(action2) == 'string' and action2 or nil),
		OnChange = (type(action2) ~= 'string' and action2 or nil),
		advanced = advanced,
	})
end

--ShortHand for adding a label
local function ShLabel( caption )
	AddOption({
		type='label',
		name=caption,
		value = caption,
		key=caption,
	})
end


local imgPath = LUAUI_DIRNAME  .. 'images/'
confdata.subMenuIcons = {	
	['Game/Game Speed'] = imgPath..'epicmenu/speed-test-icon.png',
	['Game/Unit AI'] = imgPath..'epicmenu/robot2.png',
	['Settings/Reset Settings'] = imgPath..'epicmenu/undo.png',
	['Settings/Audio'] = imgPath..'epicmenu/vol.png',
	['Settings/Camera'] = imgPath..'epicmenu/video_camera.png',
	['Settings/Graphics'] = imgPath..'epicmenu/graphics.png',
	['Settings/HUD Panels'] = imgPath..'epicmenu/control_panel.png',
	['Settings/Interface'] = imgPath..'epicmenu/robotarm.png',
	['Settings/Misc'] = imgPath..'epicmenu/misc.png',
	
	['Settings/Interface/Mouse Cursor'] = imgPath..'epicmenu/input_mouse.png',
	['Settings/Interface/Map'] = imgPath..'epicmenu/map.png',
	['Settings/Interface/Healthbars'] = imgPath..'commands/Bold/health.png',
	['Settings/Interface/Spectating'] = imgPath..'epicmenu/find.png',
}

-- SETUP MENU HERE

--- GENERAL SETTINGS --- settings about settings
path='Settings/Reset Settings'
	ShLabel( 'Reset graphic settings to minimum.')
	ShButton( 'Reset graphic settings',function()
					spSendCommands{"water 0",
						"Shadows 0",
						"maxparticles 100",
						"advmodelshading 0",
						"grounddecals 0",
						'luaui disablewidget LupsManager',
						"luaui disablewidget Lups",
						"luaui disablewidget Display DPS",
						"luaui disablewidget Map Edge Extension",
						"luaui disablewidget SelectionHalo",
						"luaui disablewidget SelectionCircle",
--						"luaui disablewidget UnitShapes",
					}
				end,
				'Use this if your performance is poor'
			)
--	ShLabel( 'Reset custom settings to default.')
--	ShButton( 'Reset custom settings', function() WG.crude.ResetSettings() end )
	ShLabel( 'Reset hotkeys.')
	ShButton( 'Reset hotkeys',function() WG.crude.ResetKeys() end )

path='Settings'
	--[[
	AddOption({
		name = 'Show Advanced Settings',
		type = 'bool',
		value = false,
	})
	--]]

--- GAME --- Stuff for gameplay only. Spectator would never need to open this
path='Game' 

	ShButton( 'Pause/Unpause', 'pause', nil, nil, imgPath .. 'epicmenu/media_playback_pause.png' )
	path='Game/Game Speed' 
		ShButton( 'Increase Speed', 'speedup' )
		ShButton( 'Decrease Speed', 'slowdown' )
		
path='Game' 
	ShLabel('')
--	ShButton( 'Choose Commander Type', (function() spSendCommands{"luaui showstartupinfoselector"} end) ) 
--	ShButton( 'Constructor Auto Assist', function() spSendCommands{"luaui togglewidget Constructor Auto Assist"} end )


--- CAMERA ---
path='Settings/Camera'
	--[[
		the problem is "radioButton" is not fully implemented to recognize the item "viewta" as an existing action,
		so the hotkey Ctrl+F2 doesn't show in the menu, and thus cannot be unbound. A proposed solution is to enable both "radioButton" 
		& old camera button, but put the later in saperate category.
	--]]

	local cofcDisable = "luaui disablewidget Combo Overhead/Free Camera (experimental)"
	ShRadio( 'Camera Type', {
			{name = 'Total Annihilation',key='Total Annihilation', desc='TA camera', hotkey=nil},
			{name = 'FPS',key='FPS', desc='FPS camera', hotkey=nil},
			{name = 'Free',key='Free', desc='Freestyle camera', hotkey=nil},
			{name = 'Rotatable Overhead',key='Rotatable Overhead', desc='Rotatable Overhead camera', hotkey=nil},
			{name = 'Total War',key='Total War', desc='TW camera', hotkey=nil},
			{name = 'COFC',key='COFC', desc='Combo Overhead/Free Camera', hotkey=nil},
		},'Total Annihilation',
		function(self)
			local key = self.value
			if key == 'Total Annihilation' then
				spSendCommands{cofcDisable ,"viewta"}
			elseif key == 'FPS' then
				spSendCommands{cofcDisable ,"viewfps"}
			elseif key == 'Free' then
				spSendCommands{cofcDisable ,"viewfree"}
			elseif key == 'Rotatable Overhead' then
				spSendCommands{cofcDisable ,"viewrot"}
			elseif key == 'Total War' then
				spSendCommands{cofcDisable ,"viewtw"}
			elseif key == 'COFC' then
				spSendCommands{"luaui enablewidget Combo Overhead/Free Camera (experimental)",}
			end
		end
		)
	
	ShButton( 'Flip the TA Camera', 'viewtaflip' )
	ShButton( 'Toggle Camera Shake', 'luaui togglewidget CameraShake' )
	ShButton( 'Toggle SmooothScroll', 'luaui togglewidget SmoothScroll' )
	--ShButton( 'Toggle advanced COFC camera', 'luaui togglewidget Combo Overhead/Free Camera (experimental)' )

path='Settings/Camera/Old Camera Shortcuts'	
	ShButton( 'Total Annihilation', 'viewta' )
	ShButton( 'FPS', 'viewfps' )
	ShButton( 'Free', 'viewfree' )
	ShButton( 'Rotatable Overhead', 'viewrot' )
	ShButton( 'Total War', 'viewtw' )
	ShLabel('')
	ShButton( 'Move Forward', 'moveforward' )	
	ShButton( 'Move Back', 'moveback' )	
	ShButton( 'Move Left', 'moveleft' )	
	ShButton( 'Move Right', 'moveright' )
	ShLabel(' ')
	ShButton( 'TA camera track unit', 'track' )
	ShButton( 'Overview mode', 'toggleoverview' )
	ShButton( 'Panning mode','mousestate', 'Note: must be bound to a key for use')
	
	
--- HUD Panels --- Only settings that pertain to windows/icons at the drawscreen level should go here.
path='Settings/HUD Panels'
	ShButton( 'LuaUI TweakMode (Esc to exit)', 'luaui tweakgui', 'LuaUI TweakMode. Move and resize parts of the user interface. (Hit Esc to exit)' )

--[[path='Settings/HUD Panels/HUD Skin'
	AddOption({
		name = 'Skin Sets (Requires LuaUI Reload)',
		type = 'list',
		OnChange = function (self)
			WG.crude.SetSkin( self.value );
		end,
		items = {
			{ key = 'Carbon', name = 'Carbon', },
			{ key = 'Robocracy', name = 'Robocracy', },
			{ key = 'DarkHive', name = 'DarkHive', },
			{ key = 'Twilight', name = 'Twilight', },
		},
	})
	ShButton('Reload LuaUI', 'luaui reload', 'Reloads the entire UI. NOTE: This button will not work. You must bind a hotkey to this command and use the hotkey.' )]]--


--- Interface --- anything that's an interface but not a HUD Panel
path='Settings/Interface'
	ShButton('Toggle DPS Display', function() spSendCommands{"luaui togglewidget Display DPS"} end, 'Shows RPG-style damage' )
path='Settings/Interface/Map'
	ShButton( 'Map Draw Key', "drawinmap", nil, true )
path='Settings/Interface/Mouse Cursor'
	ShButton('Toggle Grab Input', function() spSendCommands{"grabinput"} end, 'Mouse cursor won\'t be able to leave the window.' )
	AddOption({ 	
		name = 'Hardware Cursor',
		type = 'bool',
		springsetting = 'HardwareCursor',
		OnChange=function(self) spSendCommands{"hardwarecursor " .. (self.value and 1 or 0) } end, 
	} )	
path='Settings/Interface/Selection'
--	path='Settings/Interface/Selection/Selection Shapes'
--		ShButton('Toggle Selection Shapes', function() spSendCommands{"luaui togglewidget UnitShapes"} end, "Draws coloured shapes under selected units")
	path='Settings/Interface/Selection/Selection XRay&Halo'
		ShButton('Toggle Selection XRay&Halo', function() spSendCommands{"luaui togglewidget XrayHaloSelections"} end, "Highlights bodies of selected units")	
	path='Settings/Interface/Selection/Team Platters'
		ShButton('Toggle Team Platters', function() Spring.SendCommands{"luaui togglewidget TeamPlatter"} end, "Puts team-coloured disk below units")
	path='Settings/Interface/Selection/Blurry Halo Selections'
		ShButton('Toggle Blurry Halo Selections', function() Spring.SendCommands{"luaui togglewidget Selection BlurryHalo"} end, "Places blurry halo around selected units")

  
--- MISC --- Ungrouped. If some of the settings here can be grouped together, make a new subsection or its own section.
path='Settings/Misc'
	ShButton( 'Local Widget Config', function() spSendCommands{"luaui localwidgetsconfig"} end, '', true )
	ShButton( 'Game Info', "gameinfo", '', true )
	ShButton( 'Share Dialog...', 'sharedialog', '', true )
	ShButton( 'FPS Control', "controlunit", 'Control a unit directly in FPS mode.', true )
	--ShButton( 'Exit Game...', "exitwindow", '', false ) --this breaks the exitwindow, fixme
	AddOption({
		name = 'Use uikeys.txt',
		desc = 'NOT RECOMMENDED! Enable this to use the engine\'s keybind file. This can break existing functionality. Requires restart.',
		type = 'bool',
		advanced = true,
		value = false,
	})


path='Settings/Misc/Screenshots'	
	ShButton( 'Save Screenshot (PNG)', 'screenshot', 'Find your screenshots under Spring/screenshots' ) 
	ShButton( 'Save Screenshot (JPG)', 'screenshot jpg', 'Find your screenshots under Spring/screenshots' )
	ShButton( 'Create Video (risky)', 'createvideo', 'Capture video directly from Spring without sound. Gets saved in the Spring folder. '
				..'Creates a smooth video framerate without ingame stutter. '
				..'Caution: It\'s safer to use this in windowed mode because the encoder pop-up menu appears in the foreground window, and could crash the game with a "Fatal Error" after a long recording. '
				..'\n\nRecommendation (especially for low-end PCs): After activating the video recording select the fastest encoder such as Microsoft Video and record the video in segments. '
				..' You can then use VirtualDub (opensource software) to do futher compression and editing. Note: there is other opensource video capture software like Taksi that you could try.' ) 
	
--- GRAPHICS --- We might define section as containing anything graphical that has a significant impact on performance and isn't necessary for gameplay
path='Settings/Graphics'
	ShLabel('View Radius')
	
	ShButton('Increase Radius', "increaseviewradius" )
	ShButton('Decrease Radius', "decreaseviewradius" )


	ShLabel('Trees')
	ShButton('Toggle View', 'drawtrees', nil, nil, imgPath..'epicmenu/tree_1.png' )
	ShButton('See More Trees', 'moretrees', nil, nil, imgPath..'epicmenu/tree_1.png' )
	ShButton('See Less Trees', 'lesstrees', nil, nil, imgPath..'epicmenu/tree_1.png' )
	--{'Toggle Dynamic Sky', function(self) spSendCommands{'dynamicsky'} end },
	
	ShLabel('Water Settings')
	ShButton('Basic', function() spSendCommands{"water 0"} end, nil, nil, imgPath..'epicmenu/water.png' )
	ShButton('Reflective', function() spSendCommands{"water 1"} end, nil, nil, imgPath..'epicmenu/water.png' )
	ShButton('Reflective and Refractive', function() spSendCommands{"water 3"} end, nil, nil, imgPath..'epicmenu/water.png' )
	ShButton('Dynamic', function() spSendCommands{"water 2"} end, nil, nil, imgPath..'epicmenu/water.png' )
	ShButton('Bumpmapped', function() spSendCommands{"water 4"} end, nil, nil, imgPath..'epicmenu/water.png' )

	ShLabel('Shadow Settings')
	
	--[[ FIXME: crashes 13.9 catalyst drivers; can be re-enabled with 95.1
	AddOption({
		name = 'Shadow Detail (Slide left for off)',
		type = 'number',
		valuelist = {512, 1024, 2048, 4096},
		springsetting = 'ShadowMapSize',
		OnChange=function(self)
			if self.value == 512 then
				spSendCommands{"Shadows 0 0"} --doing this sets shadowmapsize to 512. It will look at the springsetting field and we'll turn shadows off if 512.
				return
			end
			local curShadow = Spring.GetConfigInt("Shadows") or 0
			curShadow=math.max(1,curShadow)
			spSendCommands{"Shadows " .. curShadow .. ' ' .. self.value}
		end, 
	} )
	]]--
	ShButton('Toggle Terrain Shadows',
		function()
			local curShadow=Spring.GetConfigInt("Shadows") or 0
			if curShadow == 0 then
				Spring.Echo 'Shadows are turned off. You must first enable them using the above slider.'
				return
			end
			if (curShadow<2) then curShadow=2 else curShadow=1 end
			spSendCommands{"Shadows "..curShadow}
		end
	)
	
	ShLabel('Various')
	AddOption({
		name = 'Brightness',
		type = 'number',
		min = 0, 
		max = 1, 
		step = 0.01,
		value = 1,
		icon = imgPath..'epicmenu/stock_brightness.png',
		OnChange = function(self) Spring.SendCommands{"luaui enablewidget Darkening", "luaui darkening " .. 1-self.value} end, 
	} )
	
	
	AddOption({ 	
		name = 'Ground Decals',
		type = 'bool',
		springsetting = 'GroundDecals',
		OnChange=function(self) spSendCommands{"grounddecals " .. (self.value and 1 or 0) } end, 
	} )

	AddOption({
		name = 'Maximum Particles (100 - 20,000)',
		type = 'number',
		valuelist = {100,500,1000,2000,5000,10000,20000},
		springsetting = 'MaxParticles',
		OnChange=function(self) Spring.SendCommands{"maxparticles " .. self.value } end, 
	} )
	ShButton('Toggle Lups (Lua Particle System)', function() spSendCommands{'luaui togglewidget LupsManager','luaui togglewidget Lups'} end )
	ShButton('Toggle ROAM Rendering', function() spSendCommands{"roam"} end, "Toggle between legacy map rendering and (the new) ROAM map rendering." )
	
path='Settings/Graphics/Effects'
	ShButton('Toggle Nightvision', function() spSendCommands{'luaui togglewidget Nightvision Shader'} end, 'Applies a nightvision filter to screen' )
	ShButton('Smoke Signal Markers', function() spSendCommands{'luaui togglewidget Smoke Signal'} end, 'Creates a smoke signal effect at map points' )
	

path='Settings/Graphics/Map'	
	path='Settings/Graphics/Map/VR Grid'
		ShButton('Toggle VR Grid', function() spSendCommands{'luaui togglewidget External VR Grid'} end, 'Draws a grid around the map' )
	path='Settings/Graphics/Map/Map Extension'
		ShButton('Toggle Map Extension', function() spSendCommands{'luaui togglewidget Map Edge Extension'} end ,'Alternate map grid')
	path='Settings/Graphics/Map/Edge Barrier'
		ShButton('Toggle Edge Barrier', function() spSendCommands{'luaui togglewidget Map Edge Barrier'} end, 'Draws a boundary wall at map edges')
	
path='Settings/Graphics/Unit Visibility'
	ShLabel( 'Unit Visibility Options')
	AddOption({
		name = 'Draw Distance',
		type = 'number',
		min = 1, 
		max = 1000,
		springsetting = 'UnitLodDist',
		OnChange = function(self) Spring.SendCommands{"distdraw " .. self.value} end 
	} )
	AddOption({
	  name = 'Icon Distance',
	  type = 'number',
	  min = 1, 
	  max = 1000,
	  springsetting = 'UnitIconDist',
	  OnChange = function(self) Spring.SendCommands{"disticon " .. self.value} end 
	  } )
	AddOption({
		name = 'Shiny Units',
		type = 'bool',
		springsetting = 'AdvUnitShading',
		OnChange=function(self) spSendCommands{"advmodelshading " .. (self.value and 1 or 0) } end, --needed as setconfigint doesn't apply change right away
	} )
	ShLabel( 'Unit Visibility Widgets')
	ShButton('Toggle Unit Outlines',function() spSendCommands{"luaui togglewidget Outline"} end, "Shows cartoon-like outline around units")
	ShButton('Toggle Unit Halos', function() spSendCommands{"luaui togglewidget Halo"} end, "Shows halo around units")
	
	path='Settings/Graphics/Unit Visibility/Spotter'
		ShButton('Toggle Unit Spotter', function() Spring.SendCommands{"luaui togglewidget Spotter"} end, "Puts team-coloured blob below units")
	path='Settings/Graphics/Unit Visibility/XRay Shader'
		ShButton('Toggle XRay Shader', function() spSendCommands{"luaui togglewidget XrayShader"} end, "Highlights edges of units")

--- HELP ---
path='Help'
	AddOption({
		type='text',
		name='Tips',
		value=[[Hold your meta-key (spacebar by default) while clicking on a unit or corpse for more info and options. 
			You can also space-click on menu elements to see context settings. 
			]]
	})
--	ShButton('Tutorial', function() spSendCommands{"luaui togglewidget Nubtron"} end )
--	ShButton('Tip Dispenser', function() spSendCommands{"luaui togglewidget Automatic Tip Dispenser"} end, 'An advisor which gives you tips as you play' )
--	path='Help/Clippy Comments'
--		ShButton('Toggle Clippy Comments', function() spSendCommands{"luaui togglewidget Clippy Comments"} end, "Units speak up if they see you're not playing optimally" )


return confdata