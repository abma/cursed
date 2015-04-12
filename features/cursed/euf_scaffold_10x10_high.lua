local objectname= "scaffold_10x10_high" 
local featureDef  =  {
   name           = "scaffold_10x10_high",
   blocking       = false,
    category         = [[corpses]],
   damage            = 100000,
   description       = "scaffold 10x10 high",
   energy            = 0,
   flammable         = 0,
   nodrawundergray   = true,  
   footprintX        = 10,
   footprintZ        = 10,
   upright           = true,
   height            = "0",
   hitdensity        = "100000",
   metal          = 0,
   object            = "features/euf_scaffold_10x10_high.s3o",
   flammable		= false,
   reclaimable		= false,
   autoreclaimable	= false,
   indestructible	= true,
   world          = "All Worlds",
}
return lowerkeys({[featureDef.name] = featureDef})
