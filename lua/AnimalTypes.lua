-- Class for all Animals
-- AnimalMod: AnimalTypes.lua
-- Author: Dirk Peeters
-- CopyRight: (c) 2011 - 2016 Peeters Dirk
--------------------------------------------------
AnimalType = {};
AnimalType_mt = Class(AnimalType, AnimalMod);

InitObjectClass(AnimalType, "AnimalType", ObjectIds.OBJECT_ANIMAL);

addModEventListener(AnimalType);

AnimalMod.AnimalTypes = {};
--
local modItem = ModsUtil.findModItemByModName(g_currentModName);

AnimalType.classId = nil ;
AnimalType.className = "AnimalType";
AnimalType.Filename = "animalt.lua";

local a = AnimalMod;
local husbandries = {};
AnimalMod.NUM_ANIMALTYPES = 4;
local unknown = "unknown";
AnimalMod.ANIMALTYPE_UNKNOWN = 0;
AnimalMod.ANIMALTYPE_COW = 1;
AnimalMod.ANIMALTYPE_SHEEP = 2;
AnimalMod.ANIMALTYPE_CHICKEN = 3;





a.animalTypeIntToName = {};
a.animalTypeNameToInt = {};

a.animalTypeToFillType = {};
a.fillTypeToAnimalType = {};
a.animalTypeIndexToDesc = {};

a.husbandriesIntToName = {};
a.husbandriesNameToInt = {};

a.husbandriesTypeIndexToDesc = {};

local function addGame()
     AnimalMod.NUM_ANIMALTYPES = 0;
     a.AnimalTypes[unknown] = AnimalMod.NUM_ANIMALTYPES;
     husbandries[unknown] = AnimalMod.NUM_ANIMALTYPES;
     
     a.husbandriesNameToInt[unknown] = AnimalMod.NUM_ANIMALTYPES;
     a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = unknown;
     a.animalTypeNameToInt[unknown] = AnimalMod.NUM_ANIMALTYPES;
     a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = unknown;
     local desc = {name = unknown, index = AnimalMod.NUM_ANIMALTYPES};
        desc.litersPerSqmPerSecond = litersPerSqmPerSecond;
        desc.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
     local self = {name = unknown, index = AnimalMod.NUM_ANIMALTYPES};
     self.type = unknown;
     self.fillType = Fillable.FILLTYPE_UNKNOWN;
     self.animalType = AnimalMod.ANIMALTYPE_UNKNOWN;
     self.husbandryType = AnimalMod.ANIMALTYPE_UNKNOWN;
     self.fillLevel = 0;
     self.i3dFilename = "";
     self.fileName = "";
     self.litersPerSqmPerSecond = 0.1;
     self.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
     AnimalMod.AnimalTypes[unknown] = self;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
     AnimalMod.husbandriesTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
-- adding the game animaltypes --
-- cow
     AnimalMod.NUM_ANIMALTYPES = AnimalMod.NUM_ANIMALTYPES + 1;
     a.husbandriesNameToInt["cow"] = AnimalMod.NUM_ANIMALTYPES;
     a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = "cow";
     a.animalTypeNameToInt["cow"] = AnimalMod.NUM_ANIMALTYPES;
     a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = "cow";
     local desc = {name = "cow", index = AnimalMod.NUM_ANIMALTYPES};
        desc.litersPerSqmPerSecond = litersPerSqmPerSecond;
        desc.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
     local self = {name = "cow", index = AnimalMod.NUM_ANIMALTYPES};
     self.type = "cow";
     self.fillType = Fillable.FILLTYPE_COW;
     self.animalType = AnimalMod.ANIMALTYPE_COW;
     self.husbandryType = AnimalMod.ANIMALTYPE_COW;
     self.fillLevel = 0;
     self.i3dFilename = "";
     self.fileName = "";
     self.litersPerSqmPerSecond = 0.1;
     self.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
        
     AnimalMod.AnimalTypes["cow"] = self;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
     AnimalMod.husbandriesTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
     
     local hudOverlayFilename, hudOverlayFilenameSmall = AnimalMod.HUDdir .."cowHud.dds", AnimalMod.HUDdir .."cowHud.dds";
     local fillType = Fillable.registerFillType("cow", "cow", 0.2, true, hudOverlayFilename, hudOverlayFilenameSmall, desc.massPerLiter)
     AnimalMod.animalTypeToFillType[AnimalMod.NUM_ANIMALTYPES] = fillType;
     AnimalMod.fillTypeToAnimalType[fillType] = AnimalMod.NUM_ANIMALTYPES;
     
     print(tostring(Fillable.fillTypeNameToInt["cow"]));
     
-- sheep
     AnimalMod.NUM_ANIMALTYPES = AnimalMod.NUM_ANIMALTYPES + 1;
     a.husbandriesNameToInt["sheep"] = AnimalMod.NUM_ANIMALTYPES;
     a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = "sheep";
     a.animalTypeNameToInt["sheep"] = AnimalMod.NUM_ANIMALTYPES;
     a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = "sheep";
     local desc = {name = "sheep", index = AnimalMod.NUM_ANIMALTYPES};
           desc.litersPerSqmPerSecond = 0;
           desc.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
     local self = {name = "sheep", index = AnimalMod.NUM_ANIMALTYPES};
          self.type = "sheep";
          self.fillType = Fillable.FILLTYPE_SHEEP;
          self.animalType = AnimalMod.ANIMALTYPE_SHEEP;
          self.husbandryType = AnimalMod.ANIMALTYPE_SHEEP;
          self.fillLevel = 0;
          self.i3dFilename = "";
          self.fileName = "";
          self.litersPerSqmPerSecond = 0.1;
          self.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
        
     AnimalMod.AnimalTypes["sheep"] = self;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
     
     local hudOverlayFilename, hudOverlayFilenameSmall = AnimalMod.HUDdir .."sheepHud.dds", AnimalMod.HUDdir .."sheepHud.dds";
     local fillType = Fillable.registerFillType("sheep", "sheep", 0.2, true, hudOverlayFilename, hudOverlayFilenameSmall, desc.massPerLiter)
     AnimalMod.animalTypeToFillType[AnimalMod.NUM_ANIMALTYPES] = fillType;
     AnimalMod.fillTypeToAnimalType[fillType] = AnimalMod.NUM_ANIMALTYPES;
     
     print(tostring(Fillable.fillTypeNameToInt["sheep"]));
     
     -- chicken
     AnimalMod.NUM_ANIMALTYPES = AnimalMod.NUM_ANIMALTYPES + 1;
     a.husbandriesNameToInt["chicken"] = AnimalMod.NUM_ANIMALTYPES;
     a.husbandriesIntToName[AnimalMod.NUM_ANIMALTYPES] = "chicken";
     a.animalTypeNameToInt["chicken"] = AnimalMod.NUM_ANIMALTYPES;
     a.animalTypeIntToName[AnimalMod.NUM_ANIMALTYPES] = "chicken";
     local desc = {name = "chicken", index = AnimalMod.NUM_ANIMALTYPES};
        desc.litersPerSqmPerSecond = 0;
        desc.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
     local self = {name = "chicken", index = AnimalMod.NUM_ANIMALTYPES};
        self.type = "chicken";
        self.fillType = Fillable.FILLTYPE_CHICKEN;
        self.animalType = AnimalMod.ANIMALTYPE_CHICKEN;
        self.husbandryType = AnimalMod.ANIMALTYPE_CHICKEN;
        self.fillLevel = 0;
        self.stomage = {};
        self.i3dFilename = "";
        self.fileName = "";
        self.litersPerSqmPerSecond = 0.1;
        self.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
          
     AnimalMod.AnimalTypes["chicken"] = self;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
     AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
     
     local hudOverlayFilename, hudOverlayFilenameSmall = AnimalMod.HUDdir .."chickenHud.dds", AnimalMod.HUDdir .."chickenHud.dds";
     local fillType = Fillable.registerFillType("chicken", "chicken", 0.2, true, hudOverlayFilename, hudOverlayFilenameSmall, desc.massPerLiter)
     AnimalMod.animalTypeToFillType[AnimalMod.NUM_ANIMALTYPES] = fillType;
     AnimalMod.fillTypeToAnimalType[fillType] = AnimalMod.NUM_ANIMALTYPES;
     
     print(tostring(Fillable.fillTypeNameToInt["chicken"]));
     
     print("default animals setup OK");
end;

addGame();

-- Giants code modified to suit our needs
function AnimalMod.registerAnimalType(name, nameI18N, pricePerLiter, litersPerSqmPerSecond, partOfEconomy, hudOverlayFilename, hudOverlayFilenameSmall, massPerLiter, i3dFilename, xmlFile)
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
        local self = {name = name, index = AnimalMod.NUM_ANIMALTYPES};
          self.customEnvironment, self.baseDirectory = Utils.getModNameAndBaseDirectory(i3dFilename);
          self.type = name;
          self.fillType = "Fillable.FILLTYPE_" ..string.upper(name);
          self.animalType = "AnimalMod.ANIMALTYPE_" ..string.upper(name);
          self.fillLevel = 0;
          self.stomage = {};
          self.i3dFilename = nil or i3dFilename;
          self.fileName = nil or xmlFile;
          self.litersPerSqmPerSecond = litersPerSqmPerSecond;
          self.massPerLiter = Utils.getNoNil(massPerLiter, 0.0001);
          AnimalMod.AnimalTypes[name] = self;
        
        AnimalMod.animalTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
        
             if Fillable[key2] == nil then
             local fillType = Fillable.registerFillType(name, nameI18N, pricePerLiter, partOfEconomy, hudOverlayFilename, hudOverlayFilenameSmall, desc.massPerLiter)
             AnimalMod.animalTypeToFillType[AnimalMod.NUM_ANIMALTYPES] = fillType;
             AnimalMod.fillTypeToAnimalType[fillType] = AnimalMod.NUM_ANIMALTYPES;
             end;
             -- need to create a tmp storage and extra fucntion to check on loadmap
             if (g_currentMission.husbandries[key3]) == nil then
             g_currentMission.husbandries[key3] = AnimalMod.NUM_ANIMALTYPES;
             AnimalMod.husbandriesTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
             
             end;
        print("AnimalMod.registerAnimalType: " ..name);
    end
end


function AnimalType:loadMap(name)
 husbandries = g_currentMission.husbandries;
   
 for animal , index in pairs (AnimalMod.AnimalTypes) do
     for ind,valeu in pairs (index) do
     print("AnimalTypes: " ..animal .." : " ..ind .." = " .. tostring(valeu));
    end;
end;

for animals , tables in pairs (AnimalMod.animalTypeIndexToDesc) do
     for inds,valeus in pairs (tables) do
     print("animalTypeIndexToDesc: " ..animals .." : " ..inds .." = " ..tostring(tables));
    end;
end;
end;




print("animal loaded " ..AnimalType.className .. " " ..AnimalType.intToName[1]);

-- function AnimalType:new(baseDirectory, customMt)
    -- local mt = customMt;
    -- if mt == nil then
        -- mt = AnimalType_mt;
    -- end;
    -- AnimalMod.registerAnimalType(name, nameI18N, pricePerLiter, litersPerSqmPerSecond, true, hudOverlayFilename, hudOverlayFilenameSmall, massPerLiter, i3dFilename)
    -- local self = AnimalType:superClass():new(baseDirectory, mt);
	-- self.customEnvironment, self.baseDirectory = Utils.getModNameAndBaseDirectory(AnimalType.Filename);
	
    -- return self;
-- end;

function AnimalType:load(id)

	
end;

function AnimalType:mouseEvent(posX, posY, isDown, isUp, button)

end;

function AnimalType:keyEvent(unicode, sym, modifier, isDown)

end;


function AnimalType:updateTick(dt)

end;

function AnimalType:update(dt)
local cow = g_currentMission:getSiloAmount(Fillable.FILLTYPE_COW);
local numcow = husbandries.cow.totalNumAnimals * 100;

     if(husbandries.cow.totalNumAnimals > 0)then
     --print(g_currentMission:getSiloAmount(Fillable.FILLTYPE_COW) + 1);
          if( husbandries.cow.totalNumAnimals > cow) then
          print("buy true store");
               g_currentMission:setSiloAmount(Fillable.FILLTYPE_COW, g_currentMission:getSiloAmount(Fillable.FILLTYPE_COW) + 1);
          end;
          if(husbandries.cow.totalNumAnimals < cow) then
          print("sell true store");
               g_currentMission:setSiloAmount(Fillable.FILLTYPE_COW, g_currentMission:getSiloAmount(Fillable.FILLTYPE_COW) - 1);
          end;
     end
end;

function AnimalType:draw()

end;
function AnimalType:delete()

end;

function AnimalType:deleteMap(name)

end;

function AnimalType:superClass()
return AnimalType;
end;






