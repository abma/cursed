local objectname= "SnowPipeTW" 
local featureDef	=	{
	name			= "SnowPipeTW",
	world				="allworld",
	description				="SnowyPipe",
	category				="SnowyPipes",
	object				="features/lathan/SnowPipeTW.s3o",
	footprintx				=7,
	footprintz				=4,
	height				=78,
	blocking				=true,
	upright				=true,
	hitdensity				=5,
	energy				=0,
	metal				=220,
	damage				=900,
	flammable				=false,
	reclaimable				=true,
	autoreclaimable				=true,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
