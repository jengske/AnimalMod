-- this is our main structure for the AnimalMod not the animals itself.
-- all events, animaltypes and so on need to be defined in these tables
-- file is under construction
-- do not modify
local a = AnimalMod; -- just to shorten code
--local g = g_currentMission.husbandries; need to be in loadMap()
-- stats -- to be synced with our general structure
a.stats = {}; -- table to store information about the mod
a.stats.storages = {}; -- info about our storages
a.stats.animals = {}; -- info about our animals
a.stats.animalAreas = {}; -- info about the animal areas defined in the map
a.stats.triggers = {}; -- info about the animal areas defined in the map, not the animals it self
a.stats.players = {}; -- info about our players

-- general table structure to keep track of all --
a.storages = {}; -- info about our storages /storage.lua 
a.animals = {}; -- info about our animals / animalType.lua
--a.husbandries = g;
a.animals.g_animals = {}; -- game animals
a.animals.f_animals = {}; -- fillType animals
a.animals.o_animals = {}; -- objectType animals
a.animals.v_animals = {}; -- vehicleType animals
a.animals.p_animals = {}; -- placeable animals

a.triggers = {}; -- info about the animal areas defined in the map, not the animals it self /AnimalModTrigger.lua
a.players = {}; -- info about our players
a.allowedFeedTypes = {}; -- allowed feed types
a.production = {}; 

-- map stuff --
a.spawnPlaces = {};
a.eatPlaces = {};
a.breedPlaces = {};
a.animalAreas = {}; -- info about the animal areas defined in the map / animalArea.lua
a.splines = {}; 

-- gui -- no scripts made just prepairing
a.gui = {}; -- gui holder
a.gui.buttons = {}; -- buttons
a.gui.pages = {}; -- silo's, animals, triggers, ......
a.gui.menus = {}; -- menus, silo's, animals, triggers, ......
a.gui.menus.storage = {};
a.gui.menus.animals = {};
a.gui.menus.animalAreas = {};
a.gui.menus.triggers = {};
