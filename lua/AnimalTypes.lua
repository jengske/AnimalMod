
-- AnimalMod: AnimalTypes.lua
-- Author: Dirk Peeters
-- CopyRight: (c) 2011 - 2016 Peeters Dirk
--------------------------------------------------
AnimalTypes = {};
AnimalTypes_mt = Class(AnimalTypes, AnimalMod);

local a = AnimalMod;
local husbandries = {};
AnimalMod.NUM_ANIMALTYPES = 0;
local unknown = "unknown";
AnimalMod.ANIMALTYPE_UNKNOWN = 0;
AnimalMod.ANIMALTYPE_COW = 1;
AnimalMod.ANIMALTYPE_SHEEP = 2;
AnimalMod.ANIMALTYPE_CHICKEN = 3;

a.animalTypes = {};

a.animalTypes[unknown] = AnimalMod.NUM_ANIMALTYPES;
husbandries[unknown] = AnimalMod.NUM_ANIMALTYPES;

a.animalTypeIntToName = {};
a.animalTypeNameToInt = {};
a.animalTypeNameToInt[unknown] = AnimalMod.NUM_ANIMALTYPES;
a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = unknown;
a.animalTypeToFillType = {};
a.fillTypeToAnimalType = {};
a.animalTypeIndexToDesc = {};

a.husbandriesIntToName = {};
a.husbandriesNameToInt = {};
a.husbandriesNameToInt[unknown] = AnimalMod.NUM_ANIMALTYPES;
a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = unknown;
a.husbandriesTypeIndexToDesc = {};

function AnimalTypes:addGame()
     
     
     a.husbandriesNameToInt[unknown] = AnimalMod.NUM_ANIMALTYPES;
     a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = unknown;
     a.animalTypeNameToInt[unknown] = AnimalMod.NUM_ANIMALTYPES;
     a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = unknown;
     local desc = {name = unknown, index = AnimalMod.NUM_ANIMALTYPES};
     local self = {name = unknown, index = AnimalMod.NUM_ANIMALTYPES};
     self.type = unknown;
     self.fillType = Fillable.FILLTYPE_ ..string.upper(unknown);
     self.fillLevel = 0;
     self.i3dFilename = "";
     AnimalMod.animalTypes[unknown] = desc;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
     AnimalMod.husbandriesTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
-- adding the game animaltypes --
-- cow
     AnimalMod.NUM_ANIMALTYPES = AnimalMod.NUM_ANIMALTYPES +1;
     a.husbandriesNameToInt["cow"] = AnimalMod.NUM_ANIMALTYPES;
     a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = "cow";
     a.animalTypeNameToInt["cow"] = AnimalMod.NUM_ANIMALTYPES;
     a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = "cow";
     local desc = {name = "cow", index = AnimalMod.NUM_ANIMALTYPES};
     local self = {name = "cow", index = AnimalMod.NUM_ANIMALTYPES};
     self.type = "cow";
     self.fillType = Fillable.FILLTYPE_ ..string.upper("cow");
     self.fillLevel = 0;
     self.i3dFilename = "";
     AnimalMod.animalTypes["cow"] = desc;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
     AnimalMod.husbandriesTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
     
     Fillable.NUM_FILLTYPES = Fillable.NUM_FILLTYPES + 1;
     local tag = "FILLTYPE_"..string.upper("cow");
     Fillable[tag] = Fillable.NUM_FILLTYPES;
     Fillable.fillTypeNameToInt["cow"] = Fillable.NUM_FILLTYPES;
     Fillable.fillTypeIntToName[Fillable.NUM_FILLTYPES] = "cow";
     
-- sheep
     AnimalMod.NUM_ANIMALTYPES = AnimalMod.NUM_ANIMALTYPES +1;
     a.husbandriesNameToInt["sheep"] = AnimalMod.NUM_ANIMALTYPES;
     a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = "sheep";
     a.animalTypeNameToInt["sheep"] = AnimalMod.NUM_ANIMALTYPES;
     a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = "sheep";
     local desc = {name = "sheep", index = AnimalMod.NUM_ANIMALTYPES};
     local self = {name = "sheep", index = AnimalMod.NUM_ANIMALTYPES};
     self.type = "sheep";
     self.fillType = Fillable.FILLTYPE_ ..string.upper("sheep");
     self.fillLevel = 0;
     self.i3dFilename = "";
     AnimalMod.animalTypes["sheep"] = desc;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
     
     Fillable.NUM_FILLTYPES = Fillable.NUM_FILLTYPES +1;
     local tag2 = "FILLTYPE_" ..string.upper("sheep");
     Fillable[tag2 ] = Fillable.NUM_FILLTYPES;
     Fillable.fillTypeNameToInt["sheep"] = Fillable.NUM_FILLTYPES;
     Fillable.fillTypeIntToName[Fillable.NUM_FILLTYPES] = "sheep";
     
     -- chicken
     AnimalMod.NUM_ANIMALTYPES = AnimalMod.NUM_ANIMALTYPES +1;
     a.husbandriesNameToInt["chicken"] = AnimalMod.NUM_ANIMALTYPES;
     a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = "chicken";
     a.animalTypeNameToInt["chicken"] = AnimalMod.NUM_ANIMALTYPES;
     a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = "chicken";
     local desc = {name = "chicken", index = AnimalMod.NUM_ANIMALTYPES};
     local self = {name = "chicken", index = AnimalMod.NUM_ANIMALTYPES};
     self.type = "chicken";
     self.fillType = Fillable.FILLTYPE_ ..string.upper("chicken");
     self.fillLevel = 0;
     self.i3dFilename = "";
     AnimalMod.animalTypes["chicken"] = desc;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
     
     Fillable.NUM_FILLTYPES = Fillable.NUM_FILLTYPES +1;
     local tag3 = "FILLTYPE_" ..string.upper("chicken")
     Fillable[tag3] = Fillable.NUM_FILLTYPES;
     Fillable.fillTypeNameToInt["chicken"] = Fillable.NUM_FILLTYPES;
     Fillable.fillTypeIntToName[Fillable.NUM_FILLTYPES] = "chicken";
     
end;

-- Giants code modified
function AnimalMod.registerAnimalType(name, nameI18N, pricePerLiter, litersPerSqmPerSecond, partOfEconomy, hudOverlayFilename, hudOverlayFilenameSmall, massPerLiter, i3dFilename)
    local key = "ANIMALTYPE_"..string.upper(name);
    local key2 = "FILLTYPE_" ..string.upper(name);
    local key3 = name;
    --(Fillable[key2] == nil and AnimalMod[key] == nil and husbandries[key3] == nil)
    if AnimalMod[key] == nil then
        AnimalMod.NUM_ANIMALTYPES = AnimalMod.NUM_ANIMALTYPES+1;
        AnimalMod[key] = AnimalMod.NUM_ANIMALTYPES;
        
        
        local desc = {name = name, index = AnimalMod.NUM_ANIMALTYPES};
        desc.litersPerSqmPerSecond = litersPerSqmPerSecond;
        desc.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
        local self = {name = "chicken", index = AnimalMod.NUM_ANIMALTYPES};
          self.type = name;
          self.fillType = Fillable.FILLTYPE_ ..string.upper(name);
          self.fillLevel = 0;
          self.i3dFilename = nil or i3dFilename;
        AnimalMod.animalTypes[name] = desc;
        
        AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
        
             if Fillable[key2] == nil then
             local fillType = Fillable.registerFillType(name, nameI18N, pricePerLiter, partOfEconomy, hudOverlayFilename, hudOverlayFilenameSmall, desc.massPerLiter)
             AnimalMod.animalTypeToFillType[AnimalMod.NUM_ANIMALTYPES] = fillType;
             AnimalMod.fillTypeToAnimalType[fillType] = AnimalMod.NUM_ANIMALTYPES;
             end;
             
             if husbandries[key3] == nil then
             g_currentMission.husbandries[key3] = AnimalMod.NUM_ANIMALTYPES;
             AnimalMod.husbandriesTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = desc;
             
             end;
        
    end
end


function AnimalTypes:loadMap(name)
 husbandries = g_currentMission.husbandries;
end;

for animal , tables in pairs (a.animalTypes) do
     
     print("animalTypes" ..animal .." = " .. type(tables));
    
end;

for animals , tables in pairs (a.animalTypeIndexToDesc) do
     
     print("animalTypeIndexToDesc: " ..animals .." = " .. type(tables));
    
end;


