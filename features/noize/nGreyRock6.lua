-----------------------------------------------------------------------------
--  GreyRock6
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "nGreyRock6",
	blocking			= true,
	category			= "Rocks",
	damage				= 1000,
	description			= "Grey Rock",
	energy				= 0,
	flammable			= 0,
	footprintX			= 2,
	footprintZ			= 2,
	height				= "21",
	hitdensity			= "5",
	metal				= 10,
	object				= "features/noize/GreyRock6.s3o",
	reclaimable			= true,
	autoreclaimable		= true, 	
	world				= "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})

