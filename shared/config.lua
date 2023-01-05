Config = {}

--------------------------------------------------------
--						Target/Inv					  --
--------------------------------------------------------
Config.Core = 'qb-core' -- easy way to change name of core
Config.Target = 'qb-target' -- easy way to change name of target
Config.Inventory = 'qb-inventory' -- easy way to change name of inventory
Config.Debug = false -- easy way to change debug mode
Config.Containers = { -- add as many items as you want here
    ['beta-container']      = { item = 'beta-container', weight = 10000, slots = 1},
    ['epsilon-container']   = { item = 'epsilon-container', weight = 20000, slots = 2},
    ['gamma-container']     = { item = 'gamma-container', weight = 30000, slots = 3},
    ['kappa-container']     = { item = 'kappa-container', weight = 40000, slots = 4},
    ['ender-chest']         = { item = 'ender-chest', weight = 100000, slots = 8},
}
