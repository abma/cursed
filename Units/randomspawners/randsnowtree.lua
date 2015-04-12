-- UNITDEF -- ZEONMINOVSKY --
--------------------------------------------------------------------------------

local unitName = "randsnowtree"

--------------------------------------------------------------------------------

local unitDef = {
  bmcode             = "0",
  buildCostEnergy    = 0,
  buildCostMetal     = 0,
  corpse             = "zeonminovdead",
  description        = "Spawns a random snowy tree",
  explodeAs          = "ELECTRIC_EXPLOSION",
  footprintX         = 9,
  footprintZ         = 9,
  levelGround		= false,
  maxslope			= 255,
  maxwaterdepth		= 255,
  maxDamage          = 1000,
  name               = "snowy tree spawner",
  objectName         = "features/lathan/SnowTree1.s3o",
  power              = 1,
  reclaimable        = false,
  selfDestructAs     = "ELECTRIC_EXPLOSION",
  script		 	 = "default.cob",  
  shootme            = "1",
  unitname			 = unitName,
  yardMap            = "ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo",
  explodeAs          = "NULL",
  selfDestructAs     = "NULL",   
  customparams = {
	armortype			= "building",  
  	factionname		   = "randm",
  },
}
--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
