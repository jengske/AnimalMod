
-- AnimalMod: AnimalTypes.lua
-- Author: Dirk Peeters
-- CopyRight: (c) 2011 - 2016 Peeters Dirk
--------------------------------------------------
AnimalTypes = {};
AnimalTypes_mt = Class(AnimalTypes, AnimalMod);

local a = AnimalMod;
local husbandries = g_currentMission.husbandries;
AnimalMod.NUM_ANIMALTYPES = 0;
local unknown = "unknown";
AnimalMod.ANIMALTYPE_UNKNOWN = 0;

a.types = {};

a.types[unknown] = AnimalMod.NUM_ANIMALTYPES;
husbandries[unknown] = AnimalMod.NUM_ANIMALTYPES;

a.animalTypeIntToName = {};
a.animalTypeNameToInt {};
a.animalTypeNameToInt[unknown] = AnimalMod.NUM_ANIMALTYPES;
a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = unknown;
a.husbandriesIntToName = {};
a.husbandriesNameToInt = {};
a.husbandriesNameToInt[unknown] = AnimalMod.NUM_ANIMALTYPES;
a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = unknown;

function AnimalTypes:new(animalType, i3dFilename)
  --AnimalMod.NUM_ANIMALTYPES = AnimalMod.NUM_ANIMALTYPES +1;
  local key1 = AnimalMod.ANIMALTYPE_ ..string.upper(animalType);
  local key2 = Fillable.FILTYPE_ ..string.upper(animalType);
  local key3 = animalType;
  if (Fillable[key2] == nil and AnimalMod[key] == nil and husbandries[key3] == nil) then
    AnimalMod.NUM_ANIMALTYPES = AnimalMod.NUM_ANIMALTYPES +1;
    Fillable.NUM_FILLTYPES = Fillable.NUM_FILLTYPES +1;
    Fillable[key2] = Fillable.NUM_FILLTYPES;
    Fillable.fillTypeNameToInt[animalType] = Fillable.NUM_FILLTYPES;
    Fillable.fillTypeIntToName[Fillable.NUM_FILLTYPES] = animalType;
    
    AnimalMod[key] = AnimalMod.NUM_ANIMALTYPES;
    a.animalTypeNameToInt[animalType] = AnimalMod.NUM_ANIMALTYPES;
    a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = animalType;
    
    husbandries[key3] = AnimalMod.NUM_ANIMALTYPES;
    a.husbandriesNameToInt[animalType] = AnimalMod.NUM_ANIMALTYPES;
    a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = animalType;
    print ("New animalType " ..animalType .." added.");
    return true;
  else
    print ("AnimalMod Error: fail to add animaltype " ..animalType);
    return false;
  end;
  if (true) then
  local self = {};
  self.type = animalType;
  self.fillType = Fillable.FILLTYPE_ ..string.upper(animalType);
  self.fillLevel = 0;
  self.i3dFilename = nil or i3dFilename;
  
  table.insert(a.types, animalType, {});
  return self;
  end;
end;
