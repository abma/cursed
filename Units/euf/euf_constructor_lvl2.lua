-- UNITDEF -- euf_constructor_lvl2 --
--------------------------------------------------------------------------------

local unitName = "euf_constructor_lvl2"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 1.0,
  activateWhenBuilt  = true,
  armortype          = "LIGHT",
  badTargetCategory  = "AIR",
  brakeRate          = 1.5,
  buildCostEnergy    = 550,
  buildCostMetal     = 550,
  buildDistance      = 300,
  builder            = true,
  buildPic           = "euf_constructor_lvl2.png",
  buildTime          = 550,
  canAssist          = true,
  canAttack          = true,
  canBeAssisted      = false,
  canCapture         = false,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canReclaim         = true,
  canRepair          = true,
  canResurrect       = false,
  canstop            = "1",
  captureSpeed       = 0,
  category           = "EUF LAND LIGHTARMOR",
  customParams       = {
  	noautorepair	 = true,
	factionname		 = "imperials",
    helptext = "This robot can build advanced structures and has a stun-gun."	
	},
  defaultmissiontype = "Standby",
  description        = "advanced builder",
  energyMake         = 10,
  energyStorage      = 0,
  explodeAs          = "SMOKE_EXPLOSION",
  footprintX         = 2,
  footprintZ         = 2,
  iconType           = "spanner",
  idleAutoHeal       = 0.01,
  idleTime           = 400,
  mass               = 5000,
  maxDamage          = 800,
  maxSlope           = 14,
  maxVelocity        = 1.5,
  maxWaterDepth      = 500,
  metalMake          = 1.0,
  metalStorage       = 0,
  movementClass      = "TANK2X2_AMP",
  name               = "Advanced Builderoid",
  nanoColor          = "0.16 1 1",
  noChaseCategory    = "AIR",
  objectName         = "euf_constructor_lvl2.s3o",
  radarDistance      = 768,
  reclaimSpeed       = 5,
  repairSpeed        = 8,
  resurrectSpeed     = 0,
  selfDestructAs     = "SMOKE_EXPLOSION",
  showNanoFrame      = false,
  showNanoSpray      = true,
  side               = "imperials",
  sightDistance      = 512,
  smoothAnim         = false,
  sonarDistance      = 768,
  standingfireorder  = "1",
  standingmoveorder  = "0",
  
  leavetracks            = 1,
  trackOffset            = 0,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 30,  
  
  
  terraformSpeed     = 1200,
 
  leavetracks            = 1,
  trackOffset            = 0,
  trackStrength          = 10,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 30, 
 
  turnRate           = 500,
  unitname           = "euf_constructor_lvl2",
  upright            = false,
  workerTime         = 20,
  buildoptions = {
    "euf_metalextractor_lvl2",
    "euf_powerplant",
    "euf_storage",		
    "euf_radar_lvl2",
    "euf_barracks",	
    "euf_factory",
    "euf_airport",
    "euf_techcenter",		
    "euf_church",
    "euf_sanctum",
	"euf_wall_lvl2",	
    "euf_bunker",
    "euf_lasertower",	
    "euf_plasmatower",
    "euf_aatower",
    "euf_artytower",	
 },
  sfxtypes = {
    explosiongenerators = {
      "custom:TRACKED_FX",
      "custom:SMALL_EXPLOSION_YELLOW",
      "custom:PLasmaTowerGunFlare",
      "custom:PLasmaTowerGunGroundflash",	  
    },
  },
  sounds = {
    build              = "",
    canceldestruct     = "",
    repair             = "",
    underattack        = "voices_emergency",
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
      "voices_yes",
    },
    select = {
      "voices_engrdy",
    },
  },
  weapons = {
    [1]  = {
      def                = "BIGTAZER",
      onlyTargetCategory = "LAND",
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  BIGTAZER = {
    accuracy           = 300,
    areaOfEffect       = 8,
    beamWeapon         = true,
    burnblow           = true,
    cegTag             = "LICHBOLT",
    coreThickness      = 0,
    craterBoost        = 0,
    craterMult         = 0,
    duration           = 0.05,
      energypershot           = 0,	
    explosionGenerator = "custom:LICHBOLT_EXPLOSION",
    impulseBoost       = 0,
    intensity          = 0.5,
    lineOfSight        = true,
    name               = "Tazer",
    paralyzer          = 1,
    paralyzetime       = 15,
    range              = 300,
    reloadtime         = 2.0,
    renderType         = 0,
    rgbColor           = "1 1 1",
--    soundHit           = "defender_hit",
    soundStart         = "paralyser",
    soundStartVolume   = 15,
    soundTrigger       = true,
    startVelocity      = 650,
    texture1           = "darkbolt",
    texture2           = "null_texture",
    texture3           = "null_texture",
    thickness          = 1.8,
    tolerance          = 3000,
    tracks             = false,
    turnRate           = 6000,
    turret             = true,
    weaponAcceleration = 1,
    weaponTimer        = 1,
    weaponType         = "LaserCannon",
    weaponVelocity     = 650,
    damage = {
      default            = 250,
      flyer              = 250,
      heavy              = 250,
      light              = 250,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
