-- UNITDEF -- euf_scout --
--------------------------------------------------------------------------------

local unitName = "euf_scout"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.5,
  airHoverFactor     = 0,
  airStrafe          = true,
  armortype          = "FLYER",
  brakeRate          = 0.931,
  buildCostEnergy    = 200,
  buildCostMetal     = 200,
  buildPic           = "euf_scout.png",
  buildTime          = 200,
  canAttack          = true,
  canFly             = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "EUF AIR",
  collide            = true,
  collisionSphereScale = 1.0,
  customParams          = {	
	factionname		   = "imperials",
	helptext = "A quick gunship that is useful against lightly armoured targets."	
	},
  cruiseAlt          = 150,
  description        = "Light gunship",
  dontland           = "1",
  --  energyMake         = "-1",
  explodeAs          = "SMALL_EXPLOSION_YELLOW",
  floater            = false,
  footprintX         = 2,
  footprintZ         = 2,
  hoverAttack        = true,
  iconType           = "triangle",
  idleAutoHeal       = 0.01,
  idleTime           = 400,
  mass               = 400,
  maxDamage          = 510, --was 425
  maxSlope           = 25,
  maxVelocity        = 6,
  name               = "Light gunship",
  nanoColor          = "0 0 0",
  objectName         = "euf_scout.s3o",
  radarDistance      = 512,
  script             = "euf_scout.lua",  
  selfDestructAs     = "SMALL_EXPLOSION_YELLOW",
  showNanoFrame      = false,
  side               = "imperials",
  sightDistance      = 512,
  smoothAnim         = false,
  turnRate           = 500,
  unitname           = "euf_scout",
  upright            = true,
  yardMap            = "oooo",
  sfxtypes = {
    explosiongenerators = {
      "custom:MARINEGUNFLARE",
      "custom:SMALL_EXPLOSION_YELLOW",
      "custom:smokescreen_black_small",
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
      "interceptor_move",
    },
    select = {
      "interceptor_select",
    },
  },
 weapons = {
    [1]  = {
      badTargetCategory  = "AIR HEAVYARMOR", 
      def                = "SCOUTGUN",
      mainDir            = "0 0 1",
      maxAngleDif        = 150,	  
      onlyTargetCategory = "LAND AIR",
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  SCOUTGUN = {
    avoidFriendly      = true,
	collideFriendly    = true,
    accuracy           = 300,
    areaOfEffect       = 32,
	collisionSize      = 5,
    burnblow           = true,
    coreThickness      = 0.5,
    craterBoost        = 0,
    craterMult         = 0,
	cylinderTargeting = 128,		
    energypershot           = 0,	
    explosionGenerator = "custom:SMALL_BULLET_FX",
    impulseBoost       = 0,
    intensity          = 1,
    lineOfSight        = true,
    name               = "Defender Gun",
    range              = 300,
    reloadtime         = .28,
    rgbColor           = "1.0 1.0 0.66",
    soundHit           = "defender_hit",
    soundStart         = "battlegun",
    soundStartVolume   = 15,
    soundTrigger       = true,
    texture1           = "yellowgunshot",
    texture2           = "null_texture",
    texture3           = "null_texture",
    thickness          = 0.75,
    tolerance          = 3000,
    turret             = true,
    weaponAcceleration = 2000,
    weaponType         = "LaserCannon",
    weaponVelocity     = 1000,
    damage = {
      default            = 22, --was 22
      flyer              = 22, --was 22
      heavy              = (22*0.75), --was 11
      light              = 22, --was 22
    },
  },
}
unitDef.weaponDefs = weaponDefs



--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
