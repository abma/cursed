-- smokescreen

return {
  ["smokescreen"] = {
    poof01 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.75,
        colormap           = [[0.4 0.4 0.4 1.0	0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.0, 0]],
        numparticles       = 3,
        particlelife       = 20,
        particlelifespread = 20,
        particlesize       = 5,
        particlesizespread = 10,
        particlespeed      = 5,
        particlespeedspread = 5,
        pos                = [[r-5 r5, r-5 r5, r-5 r5]],
        sizegrowth         = 3,
        sizemod            = 1.0,
        texture            = [[new_dirtb]],
        useairlos          = false,
      },
    },
  },
  ["smokescreen_black_small"] = {
    poof01 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.25,
        colormap           = [[0.2 0.2 0.2 1.0	0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.0, 0]],
        numparticles       = 6,
        particlelife       = 10,
        particlelifespread = 10,
        particlesize       = 5,
        particlesizespread = 10,
        particlespeed      = 10,
        particlespeedspread = 4,
        pos                = [[r-3 r3, r-3 r3, r-3 r3]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[new_dirtb]],
        useairlos          = false,
      },
    },
  },
  
}
