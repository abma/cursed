-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

local mapWidth = Game.mapSizeX
local mapHeight = Game.mapSizeZ
local spGiveOrderToUnit = Spring.GiveOrderToUnit
local CMD_INSERT = CMD.INSERT

function Spring.Utilities.IsValidPosition(x, z)
	return x and z and x >= 1 and z >= 1 and x <= mapWidth-1 and z <= mapHeight-1
end

function Spring.Utilities.ClampPosition(x, z)
	if x and z then
		if Spring.Utilities.IsValidPosition(x, z) then
			return x, z
		else
			if x < 1 then
				x = 1
			elseif x > mapWidth-1 then
				x = mapWidth-1
			end
			if z < 1 then
				z = 1
			elseif z > mapHeight-1 then
				z = mapHeight-1
			end
			return x, z
		end
	end
end

function Spring.Utilities.GiveClampedOrderToUnit(unitID, cmdID, params, options, doNotGiveOffMap)
	if doNotGiveOffMap and not Spring.Utilities.IsValidPosition(params[1], params[3]) then
		return false
	end
	if cmdID == CMD_INSERT then
		local x, z = Spring.Utilities.ClampPosition(params[4], params[6])
		spGiveOrderToUnit(unitID, cmdID, {params[1], params[2], params[3], x, params[5], z}, options)
		return true
	end
	local x, z = Spring.Utilities.ClampPosition(params[1], params[3])
	spGiveOrderToUnit(unitID, cmdID, {x, params[2], z}, options)
	return true
end