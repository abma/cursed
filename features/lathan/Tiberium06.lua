-----------------------------------------------------------------------------
-- Tiberium06
-----------------------------------------------------------------------------
local featureDef	=	{
	name				= "Tiberium06",
	blocking			= true,
	category			= "rocks",
	damage				= 2800,
	description			= "Tiberium Crystal",
	energy				= 750,
	flammable			= 0,
	footprintX			= 2,
	footprintZ			= 2,
	height				= 20,
	hitdensity			= "5",
	indestructible		= true, 
	metal				= 40,
	object				= "features/lathan/Tiberium06.s3o",
	reclaimable			= true,
	autoreclaimable		= true, 	
	world				= "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})

