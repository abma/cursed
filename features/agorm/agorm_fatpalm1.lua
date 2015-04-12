-----------------------------------------------------------------------------
--  agorm_fatpalm1
-----------------------------------------------------------------------------
local featureDef  =  {
   name           = "agorm_fatpalm1",
   blocking       = true,
   category       = "vegitation",
   damage            = 5000,
   description       = "short palm",
   energy            = 1,
   flammable         = true,
   footprintX        = 1,
   footprintZ        = 1,
   upright           = true,
   height            = "36",
   hitdensity        = "5",

   object            = "features/agorm/palmfat1.s3o",
   reclaimable       = true,
   autoreclaimable      = true,  
   world          = "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})
