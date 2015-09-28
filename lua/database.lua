-- this is our main structure for the AnimalMod not the animals itself.
-- all events, animaltypes and so on need to be defined in these tables

local a = AnimalMod; -- just to shorten code
-- stats -- to be synced with our general structure
a.stats = {}; -- table to store information about the mod
a.stats.storages = {}; -- info about our storages
a.stats.animals = {}; -- info about our animals
a.stats.animalAreas = {}; -- info about the animal areas defined in the map
a.stats.triggers = {}; -- info about the animal areas defined in the map, not the animals it self
a.stats.players = {}; -- info about our players

-- general structure to keep track of all --
a.storages = {}; -- info about our storages /storage.lua 
a.animals = {}; -- info about our animals / animalType.lua
a.animalAreas = {}; -- info about the animal areas defined in the map / animalArea.lua
a.triggers = {}; -- info about the animal areas defined in the map, not the animals it self /AnimalModTrigger.lua
a.players = {}; -- info about our players
a.allowedFeedTypes = {}; -- allowed feed types
a.production = {}; 

-- gui --
a.gui = {}; -- gui holder
a.gui.buttons = {}; -- buttons
a.gui.pages = {}; -- silo's, animals, triggers, ......
a.gui.menus = {}; -- menus, silo's, animals, triggers, ......
a.gui.menus.storage = {};
a.gui.menus.animals = {};
a.gui.menus.animalAreas = {};
a.gui.menus.triggers = {};
