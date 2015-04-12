local objectname= "fern8" 
local featureDef	=	{
	name			= "fern8",
	world				="All Worlds",
	description				="Ferns",
	category				="arm_corpses",
	object				="features/lathan/fern8.s3o",
	footprintx				=1,
	footprintz				=1,
	height				=7,
	blocking				=true,
	hitdensity				=2000,
	metal				=5,
	damage				=10000,
	flammable				=false,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	indestructible				="0.0",
	upright				=true,
	energy				=100,
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
