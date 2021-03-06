-----------------------------------------------------------------------------
--  agorm_rock1
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "agorm_rock1",
	blocking			= true,
	category			= "rocks",
	damage				= 100,
	description			= "rock",
	energy				= 0,

	flammable			= false,
	footprintX			= 2,
	footprintZ			= 2,
	height				= "36",
	hitdensity			= "5",
	metal				= 10,
	object				= "features/agorm/rock1.s3o",
	reclaimable			= true,
	autoreclaimable		= true, 	
	world				= "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})