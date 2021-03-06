--------------------------------------------------------------------------------

local unitName = "tc_shade_lvl2"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 1.0,
  armortype          = "LIGHT",
  badTargetCategory  = "AIR",
  brakeRate          = 1.0,
  buildCostEnergy    = 500,
  buildCostMetal     = 500,
  buildPic           = "tc_shade.jpg",
  buildTime          = 500,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "CURSED LAND HEAVYARMOR",
  collisionVolumeOffsets 	= "0 0 0",
  collisionVolumeScales 	= "22 35 22",
  collisionVolumeType 		= "CylY",
  -- collisionVolumeTest 		= 1,
  customParams          = {
  	factionname		   = "cursed",
	isinfantry = "true",	
    canjump        = "1",
	jumpclass = "hero",
	ProvideTech = "-Hero",		
	normaltex = "unittextures/normalmaps/tc_shade_normal.png",
	normalmaps = "yes",		
    helptext 	= "The Shade is a cursed damage dealer class hero."
 },  
  defaultmissiontype = "Standby",
  description        = "Hero",
  energyMake         = "",
  explodeAs          = "BLOOD_EXPLOSION",
  firestandorders    = "1",
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = "circle",
  idleAutoHeal       = 5,
  idleTime           = 200,
  mass               = 3000,
  maxDamage          = 2250,
  maxSlope           = 25,
  maxVelocity        = 3.8,
  maxWaterDepth      = 12,
  mobilestandorders  = "1",
  movementClass      = "Trooper3X3",
  name               = "Shade (Level 2)",
  nanoColor          = "0 0 0",
  noAutoFire         = false,
  noChaseCategory    = "AIR",
  objectName         = "tc_shade.s3o",
  radarDistance      = 512,
  script             = 'tc_shade.lua',  
  selfDestructAs     = "BLOOD_EXPLOSION",
  showNanoFrame      = false,
  side               = "cursed",
  sightDistance      = 512,
  smoothAnim         = true,
  standingfireorder  = "2",
  standingmoveorder  = "2",
  turnRate           = 2500,
  turnInPlace        = true,
  unitname           = "tc_shade_lvl2",
  upright            = true,
  sfxtypes = {
    explosiongenerators = {
      "custom:REDGREENBLOOD_EXPLOSION",
      "custom:blood_spray",
      "custom:SPARKLES",
      "custom:Smoke_Shade",
	  "custom:LEVELING",	  
    },
  },
  sounds = {
    canceldestruct     = "",
   underattack        = "shade_underatk",
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
      "shade_move",
    },
    select = {
      "shade_select",
    },
  },
  weapons = {
    [1]  = {
      def                = "SWORD",
      mainDir            = "0 0 1",
      maxAngleDif        = 360,
	  badTargetCategory = "AIR",
      onlyTargetCategory = "LAND AIR",
    },
  },
}

--------------------------------------------------------------------------------

local weaponDefs = {
  SWORD = {
      name                    = [[Shade Swords]],
      areaOfEffect            = 32,
      beamTime                = 0.13,
      beamWeapon              = true,
      canattackground         = true,
      collideFriendly    	  = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,
	  cylinderTargeting       = 1,		  
      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 90,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      lodDistance             = 10000,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 64,
      reloadtime              = 0.85,
      renderType              = 0,
      rgbColor                = [[0 0 0]],
      targetborder            = 1,
      targetMoveError         = 0.2,
      thickness               = 0,
      tolerance               = 10000,
      turret                  = true,
      waterweapon             = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 2000, 
    damage = {
      default            = 155,
      flyer              = 155,
      heavy              = 155,
      light              = 155,
    },
  },
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
