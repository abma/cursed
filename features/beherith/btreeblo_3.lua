local objectname= "btreeblo_3" 
local featureDef	=	{
	name			= "btreeblo_3",
	world				="All Worlds",
	description				="Elm Tree",
	category				="Vegetation",
	object				="features/beherith/btreeblo_3.s3o",
	footprintx				=3,
	footprintz				=3,
	height				=30,
	blocking				=true,
	upright				=true,
	hitdensity				=50,
	energy				=1,

	damage				=100,
	flammable				=true,
	reclaimable				=true,
	autoreclaimable				=true,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
