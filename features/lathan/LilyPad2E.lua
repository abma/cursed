local objectname= "LilyPad2E" 
local featureDef	=	{
	name			= "LilyPad2E",
	world				="allworld",
	description				="Lily Pads",
	category				="Vegitation",
	object				="features/lathan/LilyPad2E.s3o",
	footprintx				=4,
	footprintz				=4,
	height				=1,
	blocking				=false,
	upright				=true,
	hitdensity				=0,
	energy				=120,
	metal				=0,
	damage				=70,
	flammable				=false,
	indestructible				="1.0",
	reclaimable				=false,
	autoreclaimable				=false,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
