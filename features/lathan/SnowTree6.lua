-----------------------------------------------------------------------------
-- SnowTree6
-----------------------------------------------------------------------------
local featureDef  =  {
   name           = "SnowTree6",
   blocking       = true,
   category       = "Vegitation",
   damage            = 120,
   description       = "Snowy Tree",
   energy            = 400,
   flammable         = 0,
   footprintX        = 4,
   footprintZ        = 7,
   upright           = true,
   height            = "66",
   hitdensity        = "5",
   metal          = 10,
   object            = "features/lathan/SnowTree6.s3o",
   reclaimable       = true,
   autoreclaimable      = true,  
   world          = "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})

