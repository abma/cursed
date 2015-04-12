local objectname= "SnowIndyPC1E" 
local featureDef	=	{
	name			= "SnowIndyPC1E",
	world				="allworld",
	description				="Snowy Petrochemical Plant",
	category				="SnowyIndy",
	object				="features/lathan/SnowIndyPC1E.s3o",
	footprintx				=14,
	footprintz				=14,
	height				=80,
	blocking				=true,
	upright				=true,
	hitdensity				=5,
	energy				=0,
	metal				=4200,
	damage				=1100,
	flammable				=false,
	reclaimable				=false,
	autoreclaimable				=false,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
