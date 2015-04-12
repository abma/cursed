-----------------------------------------------------------------------------
--  agorm_talltree4
-----------------------------------------------------------------------------
local featureDef  =  {
   name           = "agorm_talltree4",
   blocking       = true,
   category       = "vegitation",
   damage            = 100,
   description       = "tree",
   energy            = 1,
   flammable         = true,
   footprintX        = 2,
   footprintZ        = 2,
   upright           = true,
   height            = "36",
   hitdensity        = "5",

   object            = "features/agorm/talltree4.s3o",
   reclaimable       = true,
   autoreclaimable      = true,  
   world          = "All Worlds",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[featureDef.name] = featureDef})
