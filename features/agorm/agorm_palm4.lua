-----------------------------------------------------------------------------
--  agorm_palm4
-----------------------------------------------------------------------------
local featureDef  =  {
   name           = "agorm_palm4",
   blocking       = true,
   category       = "vegitation",
   damage            = 100,
   description       = "palm tree",
   energy            = 1,
   flammable         = true,
   footprintX        = 1,
   footprintZ        = 1,
   upright           = true,
   height            = "36",
   hitdensity        = "5",

   object            = "features/agorm/palm4.s3o",
   reclaimable       = true,
   autoreclaimable      = true,  
   world          = "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})
