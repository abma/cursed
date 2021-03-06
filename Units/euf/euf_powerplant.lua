-- UNITDEF -- euf_powerplant --
--------------------------------------------------------------------------------

local unitName = "euf_powerplant"

--------------------------------------------------------------------------------

local unitDef = {
  armortype          = "HEAVY",
  buildCostEnergy    = 1000,
  buildCostMetal     = 1000,
  buildTime          = 1000,
  
  buildingGroundDecalDecaySpeed = 0.2,
  buildingGroundDecalSizeX = 15,
  buildingGroundDecalSizeY = 15,
  buildingGroundDecalType = "euf_powerplant_aoplane.dds",
  buildPic           = "euf_powerplant.png",
  category           = "EUF LAND HEAVYARMOR",
  collisionVolumeType 		= "Box",
  collisionVolumeScales 	= "190 125 80",
  collisionVolumeOffsets 	= "0 10 0",
  -- collisionVolumeTest 		= 1,  
  corpse             = "dead",
  customParams          = {	
	factionname		   = "imperials",
    helptext = "This is the advanced energy supply."	
	},
  description        = "Creates energy",
  energyMake         = 150,
  energyStorage      = 0,
  explodeAs          = "MEDIUM_EXPLOSION_BLUE",
  footprintX         = 12,
  footprintZ         = 5,
  iconType           = "bigenergy",
  idleAutoHeal       = 0.01,
  idleTime           = 400,
  levelGround        = true,
  maxDamage          = 3000,
  maxSlope           = 20,
  maxWaterDepth      = 0,
  name               = "Powerplant",
  nanoColor          = "0 0 0",
  noAutoFire         = false,
  objectName         = "euf_powerplant.s3o",
  onoffable          = false,
  radarDistance      = 64,
  selfDestructAs     = "MEDIUM_EXPLOSION_BLUE",
  showNanoFrame      = false,
  side               = "imperials",
  sightDistance      = 256,
  smoothAnim         = false,
  TEDClass           = "ENERGY",
  unitname           = "euf_powerplant",
  useBuildingGroundDecal = true,
  yardMap            = "ooooo ooooo ooooo ooooo ooooo ooooo ooooo ooooo ooooo ooooo ooooo ooooo",
  sfxtypes = {
    explosiongenerators = {
      "custom:Powerplant_Explosion",
      "custom:EUF_Structurebuilding_Big",
      "custom:MEDIUM_EXPLOSION_YELLOW",	  
    },
  },
  sounds = {
    build              = "",
    canceldestruct     = "",
    repair             = "",
    underattack        = "voices_baseattacked",
    working            = "",
    arrived = {
      "",
    },
    cant = {
      "",
    },
    count = {
      "",
      "",
      "",
      "",
      "",
      "",
    },
    ok = {
      "",
    },
    select = {
      "powerplant_select",
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {	
	resurrectable	   = 0,  
    blocking           = true,
	customParams          = {
		featuredecaytime		= "300"
	},  		
    damage             = 8000,
    description        = "Wrecked Powerplant",
    footprintX         = 12,
    footprintZ         = 5,
    height             = "30",
    hitdensity         = "100",
    metal              = 1000,
    object             = "euf_powerplant_dead.s3o",
    reclaimable        = true,
    reclaimTime        = 500,
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
