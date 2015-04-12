local objectname= "ad0_bushes_xl_6" 
local featureDef	=	{
	name			= "ad0_bushes_xl_6",
	world				="All Worlds",
	description				="Larger Bush",
	category				="Vegetation",
	object				="features/0ad/bushes/ad0_bushes_xl_6.s3o",
	footprintx				=1,
	footprintz				=1,
	height				=30,
	blocking				=false,
	upright				=true,
	hitdensity				=0,
	energy				=1,
	metal				=0,
	damage				=100,
	flammable				=true,
	reclaimable				=true,
	autoreclaimable				=true,
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
