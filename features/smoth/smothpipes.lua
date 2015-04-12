-----------------------------------------------------------------------------
--  smothpipes
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "pipes",
	blocking			= true,
	category			= "Industrial",
	damage				= 1000,
	description			= "pile of pipes",
	energy				= 2000,
	featureDead			= "rubble",
	flammable			= false,
	footprintX			= 4,
	footprintZ			= 10,
	height				= "10",
	hitdensity			= "5",
	metal				= 350,
	object				= "features/smoth/pipes.s3o",
	reclaimable			= true,
	autoreclaimable		= true, 	
	world				= "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})
