return {
  ["MANACAST_HEAL"] = {
    poof01 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.2,
        alwaysvisible      = true,
        colormap           = [[1.0 1.0 1.0 0.04	1.0 0.2 0.2 0.01	0.1 0.1 0.1 0.01]],
        directional        = false,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.005, 0]],
        numparticles       = 6,
        particlelife       = 5,
        particlelifespread = 16,
        particlesize       = 10,
        particlesizespread = 0,
        particlespeed      = 8,
        particlespeedspread = 1,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.8,
        sizemod            = 1.0,
        texture            = [[randdots]],
        useairlos          = false,
      },
	},
  },
  ["MANACAST_HURT"] = {
    poof01 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.2,
        alwaysvisible      = true,
        colormap           = [[0.6 0.6 0.6 0.04	1.0 1.0 1.0 0.01	0.1 0.1 0.1 0.01]],
        directional        = false,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.005, 0]],
        numparticles       = 6,
        particlelife       = 5,
        particlelifespread = 16,
        particlesize       = 10,
        particlesizespread = 2,
        particlespeed      = 8,
        particlespeedspread = 1,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.8,
        sizemod            = 1.0,
        texture            = [[randstars]],
        useairlos          = false,
      },
	},
  },
}