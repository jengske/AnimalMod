AnimalTypes = {};
AnimalTypes_mt = Class(AnimalTypes, AnimalMod);

local a = AnimalMod;
local husbandries = g_currentMission.husbandries;
AnimalMod.NUM_ANIMALTYPES = 0;
AnimalMod.ANIMALTYPE_UNKNOWN = 0;

if a.types == nil then a.types = {}; end;

function AnimalTypes:new(animalType, i3dFilename)
  local key1 = AnimalMod.ANIMALTYPE_ ..string.upper(animalType);
  local self = {};
  self.type = animalType;
  self.fillType = Fillable.FILLTYPE_ ..string.upper(animalType);
  self.fillLevel = 0;
  self.i3dFilename = nil or i3dFilename;
  
  table.insert(a.types, self);
  return self;
end;
