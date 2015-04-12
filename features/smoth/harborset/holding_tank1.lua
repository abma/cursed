local objectname	= "holding_tank1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Chemical tank",
	featuredead			= "holding_tank1_dead",			
	energy				= 2000,
	flammable			= 0,
	collisionvolumetype  = "CylY",
	collisionvolumescales = "36 30 36",
	collisionvolumeoffsets = "0 0 0",		
	footprintX			= 3,
	footprintZ			= 3,
	height				= "36",
	hitdensity			= "5",
	metal				= 350,
	object				= "features/smoth/harborset/" .. objectname .. ".s3o",
	reclaimable			= true,
	autoreclaimable		= true, 	
	world				= "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef})

