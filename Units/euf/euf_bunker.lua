-- UNITDEF -- EUF_BUNKER --
--------------------------------------------------------------------------------

local unitName = "euf_bunker"

--------------------------------------------------------------------------------

local unitDef = {
  activateWhenBuilt  = true,
  armortype          = "HEAVY",
  buildCostEnergy    = 400,
  buildCostMetal     = 400,
  buildTime          = 400,
  
--[[  buildingGroundDecalDecaySpeed = 0.2,
  buildingGroundDecalSizeX = 15,
  buildingGroundDecalSizeY = 15,
  buildingGroundDecalType = "euf_bunker_aoplane.png",
  useBuildingGroundDecal = true,  ]]-- doesn't work for some reason - deactivated just to be sure
  
  buildPic           = "euf_bunker.png",    
  category           = "EUF LAND HEAVYARMOR",

  collisionVolumeOffsets 	= "0 0 0",
  collisionVolumeScales 	= "40 30 40",
  collisionVolumeType 		= "CylY",  
  
  corpse             = "dead",
  customParams       = {	
	factionname		 = "imperials",
	transportloadingradius	 = 300,
	normaltex = "unittextures/normalmaps/euf_bunker_normal.png",
	normalmaps = "yes",		
    helptext = "The bunker is a heavily fortified structure that can be used as a firebase for up to 4 soldiers."	
	},
  description        = "Firebase for soldiers",
  explodeAs          = "SMALL_EXPLOSION_YELLOW",
  footprintX         = 6,
  footprintZ         = 6,
  iconType           = "bigrhombe",
  idleAutoHeal       = 0.01,
  idleTime           = 400,
  script             = 'euf_bunker.lua',
  levelGround        = true,
  maxDamage          = 4000,
  maxSlope           = 25,
  maxWaterDepth      = 0,
  name               = "Bunker",
  nanoColor          = "0 0 0",
  objectName         = "euf_bunker.s3o",
  radarDistance      = 0,
  selfDestructAs     = "SMALL_EXPLOSION_YELLOW",
  showNanoFrame      = false,
  side               = "imperials",
  sightDistance      = 512,
  smoothAnim         = false,
  unitname           = "euf_bunker",
  yardMap            = "oooooo oooooo oooooo oooooo oooooo oooooo",
------------- transport ---------  
  isfirePlatform     = true,
  loadingradius		 = 200,
  releaseHeld        = false,
  transportCapacity  = 8,
  transportMass      = 100000000,
  transportSize      = 10,
  transmaxunits      = 4,
  transportunloadmethod = 2,
  unloadSpread       = 0,
-------------------------------
  sfxtypes = {
    explosiongenerators = {
      "custom:Small_Explosion_YELLOW",
      "custom:EUF_Structurebuilding_Medium",
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
      "building",
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
    description        = "Wrecked Bunker",
    footprintX         = 6,
    footprintZ         = 6,
    height             = "30",
    hitdensity         = "100",
    metal              = 150,
    object             = "euf_bunker_dead.s3o",
    reclaimable        = true,
    reclaimTime        = 500,
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
