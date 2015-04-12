local objectname	= "Industrial_smokestack_1"

local featureDef	=	{
	name				= objectname,
	blocking			= true,
	category			= "industrial",
	damage				= 2000,
	description			= "Smoke stack",
	energy				= 2000,
	flammable			= 0,
	footprintX			= 2,
	footprintZ			= 4,
	collisionvolumetype		= "box",
	collisionvolumescales	= "32 45 64",
	collisionvolumeoffsets	= "0 0 0",			
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

