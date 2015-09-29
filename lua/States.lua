-- AnimalMod: States.lua
-- Author: Dirk Peeters
-- CopyRight: (c) 2011 - 2016 Peeters Dirk
--------------------------------------------------

-- statemachine --------------------------------
-- general -- 0
AnimalMod.STATE_IDLE = 0;
-- moving -- 1 2 0
AnimalMod.STATE_WALK = 1;
AnimalMod.STATE_RUN = 2;
-- doing -- 0 3, 0 4
AnimalMod.STATE_EAT = 3;
AnimalMod.STATE_WORKING = 4;
-- health --
AnimalMod.STATE_SICK = 5;
AnimalMod.STATE_ALIVE = 6;
AnimalMod.STATE_DEAD = 7;

AnimalMod.NUM_STATES = 8;

AnimalMod.nameToInt = {};
AnimalMod.nameToInt["idle"] = AnimalMod.STATE_IDLE;
AnimalMod.nameToInt["walk"] = AnimalMod.STATE_WALK ;
AnimalMod.nameToInt["run"] = AnimalMod.STATE_RUN;
AnimalMod.nameToInt["eat"] = AnimalMod.STATE_EAT;
AnimalMod.nameToInt["working"] = AnimalMod.STATE_WORKING;
AnimalMod.nameToInt["sick"] = AnimalMod.STATE_SICK;
AnimalMod.nameToInt["alive"] = AnimalMod.STATE_ALIVE;
AnimalMod.nameToInt["dead"] = AnimalMod.STATE_DEAD;

AnimalMod.intToName = {};
AnimalMod.intToName[AnimalMod.STATE_IDLE] = "idle";
AnimalMod.intToName[AnimalMod.STATE_WALK ] = "walk";
AnimalMod.intToName[AnimalMod.STATE_RUN] = "run";
AnimalMod.intToName[AnimalMod.STATE_EAT] = "eat";
AnimalMod.intToName[AnimalMod.STATE_WORKING] = "working";
AnimalMod.intToName[AnimalMod.STATE_SICK] = "sick";
AnimalMod.intToName[AnimalMod.STATE_ALIVE] = "alive";
AnimalMod.intToName[AnimalMod.STATE_DEAD] = "dead";
--------------------------------------------------
