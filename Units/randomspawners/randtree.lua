-- UNITDEF -- ZEONMINOVSKY --
--------------------------------------------------------------------------------

local unitName = "randtree"

--------------------------------------------------------------------------------

local unitDef = {
  bmcode             = "0",
  buildCostEnergy    = 0,
  buildCostMetal     = 0,
  description        = "Spawns a random tree",
  explodeAs          = "ELECTRIC_EXPLOSION",
  footprintX         = 2,
  footprintZ         = 2,
  levelGround		= false,
  maxslope			= 255,
  maxwaterdepth		= 255,
  maxDamage          = 1000,
  name               = "tree spawner",
  objectName         = "features/smoth/smothtree1.s3o",
  power              = 1,
  reclaimable        = false,
  selfDestructAs     = "ELECTRIC_EXPLOSION",
  script		 	 = "default.cob",  
  shootme            = "1",
  unitname			 = unitName,
  yardMap            = "oo oo",
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
