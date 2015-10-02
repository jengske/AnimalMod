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
local tmpHusbandries = {}; -- only to store the husbandry animals during load
tmpHusbandries.cow = {};
tmpHusbandries.sheep = {};
tmpHusbandries.chicken = {};

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
             if (tmpHusbandries[key3]) == nil then -- if (g_currentMission.husbandries[key3]) == nil then
              tmpHusbandries[key3] = {}; -- g_currentMission.husbandries[key3] = AnimalMod.NUM_ANIMALTYPES;
              tmpHusbandries[key3].totalNumAnimals = 0;
              setHusTable(name);
              AnimalMod.husbandriesTypeIndexToDesc[AnimalMod.NUM_ANIMALTYPES] = self;
             end;
        print("AnimalMod.registerAnimalType: " ..name);
    end;
end;

function AnimalType:init()
print("init before load");
     for k,v in pairs(tmpHusbandries)do
     
           if (g_currentMission.husbandries[k]) == nil then
           
             g_currentMission.husbandries[k] = {};
             g_currentMission.husbandries[k].totalNumAnimals = 0;
             g_currentMission.husbandries[k] = tmpHusbandries[k]; --g_currentMission.husbandries.cow;
             g_currentMission.husbandries[k].tipTriggersFillLevels = g_currentMission.husbandries.cow.tipTriggersFillLevels;
             g_currentMission.husbandries[k].manureHeap = g_currentMission.husbandries.cow.manureHeap;
             g_currentMission.husbandries[k].tipTriggers = g_currentMission.husbandries.cow.tipTriggers;
             g_currentMission.husbandries[k].liquidManureTrigger = g_currentMission.husbandries.cow.liquidManureTrigger;
             
           end;
           print("test: " ..type(tmpHusbandries[k]) .." vs " ..type(g_currentMission.husbandries[k]));
            
           --tmpHusbandries[k] = g_currentMission.husbandries[k];
     end;
for k,v in pairs(g_currentMission.husbandries.cow.tipTriggersFillLevels[12][1])do
     print("tipTriggersFillLevels: " ..k .." = " ..tostring(v));
end;
-- for ks,vs in pairs(tmpHusbandries)do
     -- print("tmpHusbandries: " ..ks .." = " ..tostring(vs));
-- end;
for _, location in pairs(g_currentMission.tipTriggers) do
    if (location.isFarmTrigger) then
      for index, _ in pairs(location.acceptedFillTypes) do
        if location.animalHusbandry then
          print("location.animalHusbandry: " ..location.id);
               
        end;
      end;
    end;
  end;
end;

function AnimalType:loadMap(name)
 husbandries = g_currentMission.husbandries;
 AnimalType:init();  
 for animal , index in pairs (AnimalHusbandry) do
 --print(animal, type(index))
     -- for ind,valeu in pairs (index) do
     -- print("AnimalTypes: " ..animal .." : " ..ind .." = " .. type(valeu));
    -- end;
 end;

 for animals , tables in pairs (StoreItemsUtil.storeItemsByXMLFilename.chicken) do --VehicleTypeUtil.vehicleTypes.forwarder - StatisticView
     --for inds,valeus in pairs (tables) do
     
     if (type(tables) == "string" or type(tables) == "number")then
     print("(StoreItemsUtil: " ..animals .." : " ..tostring(tables));
     elseif(type(tables) == "table") then
          for k,v in pairs(tables)do
               if (type(v) == "string" or type(v) == "number")then
                    print("(StoreItemsUtil: " ..k .." : " ..tostring(v));
               elseif(type(v) == "table") then
                    print("(StoreItemsUtil: " ..k .." : " ..type(v));
               end;
          end;
     end;
    --end;
   
 end;
 -----
 buyAnimal("test", 2, 4);


 
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

-- this is only for the in game animalTypes
for animaltype, v in pairs (husbandries)do
local key1 = "FILLTYPE_" ..string.upper(animaltype);
local key2 = animaltype;
local animal = g_currentMission:getSiloAmount(Fillable[key1]);
local numanimal = 1;


     if(husbandries[key2].totalNumAnimals > 0)then
     
          if( husbandries[key2].totalNumAnimals > animal) then
          
          g_currentMission:setSiloAmount(Fillable[key1], animal + numanimal);
          print("buy true store: " ..key2);
          end;
          
          if(husbandries[key2].totalNumAnimals < animal) then
          
          g_currentMission:setSiloAmount(Fillable[key1], animal - numanimal);
          print("sell true store: " ..key2);
          end;
          
     end;
end;

end;

function buyAnimal(animaltype, amount, position)
if(position == 1 or position == 2 or position == 3)then 
print("you can not use this function on the default animalTypes: " ..position); 
return; 
else
local key = animaltype;
husbandries[key].totalNumAnimals = husbandries[key].totalNumAnimals + amount;
--table.insert(husbandries[key].numAnimals[0], amount);
print("added " ..amount .." of aniamls to " ..animaltype);
for k, v in pairs(husbandries[key].numAnimals)do
print ("numAnimals: " ..k, v);
husbandries[key].numAnimals[k] = amount;
end;
print(ShopScreen.PAGE_VEHICLE_CATEGORY); -- 5
print(ShopScreen.TYPE_VEHICLE);
end;

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


function setHusTable(name)

local tmpCattle = tmpHusbandries[name];
tmpCattle.id = 26;
--tmpCattle.tipTriggersFillLevels = g_currentMission.husbandries.cow.tipTriggersFillLevels; --{};
-- AnimalHusbandry.20 = table: 0x1039f6f0
-- AnimalHusbandry.21 = table: 0x103913f8
-- AnimalHusbandry.10 = table: 0x1073a4f0
-- AnimalHusbandry.12 = table: 0x10616e58
tmpCattle.typeName = name;
tmpCattle.updateMinutesInterval = 20;
tmpCattle.totalNumAnimals = 0;
tmpCattle.numObjectsInPalletSpawnerTrigger = 0;
tmpCattle.strawPlaneMaxFillLevel = 18000;
tmpCattle.husbandryId = 116619;
tmpCattle.husbandryDirtyFlag = 1;
tmpCattle.numVisibleAnimals = {[0] = 1, [1] = 0};
-- AnimalHusbandry.0 = 1
-- AnimalHusbandry.1 = 0
tmpCattle.updateMinutes = 0;
tmpCattle.fillLevelMilk = 0;
tmpCattle.numSubTypes = 2;
tmpCattle.nextDirtyFlag = 2;
tmpCattle.productivity = 0;
tmpCattle.strawPlaneMinY = 114.7;
--tmpCattle.manureHeap = g_currentMission.husbandries.cow.manureHeap; --{};
-- tmpCattle.manureHeap.movingId = 124908;
-- tmpCattle.manureHeap.moveMaxY = 0;
-- tmpCattle.manureHeap.fillType = 26;
-- tmpCattle.manureHeap.vehiclesInRange = {};
--return nothing 'nothing inrange'
-- tmpCattle.manureHeap.infoTriggerId = 116650;
-- tmpCattle.manureHeap.moneyChangeId = 99;
-- tmpCattle.manureHeap.nodeId = 124907;
-- tmpCattle.manureHeap.triggerMaxY = 0;
-- tmpCattle.manureHeap.capacity = 400000;
-- tmpCattle.manureHeap.triggerMinY = 0.4;
-- tmpCattle.manureHeap.lastMoneyChange = -1;
-- tmpCattle.manureHeap.fillLevel = 0;
-- tmpCattle.manureHeap.triggerYPower = 0.5;
-- tmpCattle.manureHeap.moveYPower = 0.5;
-- tmpCattle.manureHeap.triggerId = 124909;
-- tmpCattle.manureHeap.moveMinY = -3.9;
-- tmpCattle.manureHeap.fillLevelObject = g_currentMission.husbandries.cow.fillLevelObject; --{} ;
-- holds copy of self
tmpCattle.baseDirectory = "";
--tmpCattle.tipTriggers = g_currentMission.husbandries.cow.tipTriggers; -- {};
-- tmpCattle.tipTriggers[1] = {};
-- tmpCattle.tipTriggers[1].triggerStartId = 124885;
-- tmpCattle.tipTriggers[1].triggerId = 124887;
-- tmpCattle.tipTriggers[1].acceptedFillTypes = {};
-- tmpCattle.tipTriggers[1].lastMoneyChange = -1;
-- tmpCattle.tipTriggers[1].triggerWidth = 1.2000000476837;
-- tmpCattle.tipTriggers[1].moveMinY = 0;
-- tmpCattle.tipTriggers[1].triggerEndId = 124886;
-- tmpCattle.tipTriggers[1].animalPlaces = {};
-- tmpCattle.tipTriggers[1].id = 27;
-- tmpCattle.tipTriggers[1].stationName = Station;
-- tmpCattle.tipTriggers[1].rootNode = 124884;
-- tmpCattle.tipTriggers[1].moneyChangeId = 96;
-- tmpCattle.tipTriggers[1].triggerTipWidth = inf;
-- tmpCattle.tipTriggers[1].nextDirtyFlag = 2;
-- tmpCattle.tipTriggers[1].fillPlane = 124888;
-- tmpCattle.tipTriggers[1].updateEventListeners = {};
-- tmpCattle.tipTriggers[1].tipTriggerDirtyFlag = 1;
-- tmpCattle.tipTriggers[1].animalHusbandry = {};
-- tmpCattle.tipTriggers[1].moveMaxY = 0.5;
-- tmpCattle.tipTriggers[1].moveBackScale = 8.3333333333333e-007;
-- tmpCattle.tipTriggers[1].priceMultipliers = {};
-- tmpCattle.tipTriggers[1].moveScale = 4.0000001899898e-005;
-- tmpCattle.tipTriggers[1].dirtyMask = 0;
-- tmpCattle.tipTriggers[1].shovelCatcherId = 124884;
-- AnimalHusbandry.2 = table: 0x10515000
-- AnimalHusbandry.3 = table: 0x1036e340
	-- 1 trigger
	-- 
tmpCattle.strawPlaneId = 124924;
tmpCattle.virtualToVisibleAnimals = {};
tmpCattle.virtualToVisibleAnimals[1] = {visible = 6, virtual = 6};
tmpCattle.virtualToVisibleAnimals[2] = {visible = 6, virtual = 6};
-- AnimalHusbandry.1 = table: 0x108b4c70
-- AnimalHusbandry.2 = table: 0x108b4cc0
	-- AnimalHusbandry.visible = 6
	-- AnimalHusbandry.virtual = 6
--tmpCattle.liquidManureTrigger = g_currentMission.husbandries.cow.liquidManureTrigger; -- {};
tmpCattle.numAnimals = {};
tmpCattle.strawPlaneMaxY = 115;
print("structure made");
end;



