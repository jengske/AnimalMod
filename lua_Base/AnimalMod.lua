-- BaseClass for the AnimalMod
AnimalMod = {}; -- projectName/modName
AnimalMod.ClassName = "AnimalMod";
-- directory structure
AnimalMod.baseDir = g_currentModDirectory;
local baseDir = AnimalMod.baseDir;
AnimalMod.XMLdir = baseDir .."xml/";
local xmlDir = AnimalMod.XMLdir;
AnimalMod.LUAdir = baseDir .."lua/";
local luaDir = AnimalMod.LUAdir;
AnimalMod.I3Ddir = baseDir .."i3d/";
local i3dDir = AnimalMod.I3Ddir;
AnimalMod.IMGdir = baseDir .."img/";
local imgDir = AnimalMod.IMGdir;
AnimalMod.TRGdir = baseDir .."triggers/";
local trgDir = AnimalMod.TRGdir;

AnimalMod.modName = g_currentModName;
local ModName = AnimalMod.modName;

-- files needed by the AnimalMod: you need to name the files like what thy do, example: breed.lua handles the breeding part of the mod.
local filesToLoad = { -- place here new functions or addons for the mod, we will load these by number order.
  [1] = 'header.lua', -- hold the project & team information
  [2] = 'setup.lua'}; -- setup default table structure


local function letsStart() -- load all files needed by the AnimalMod
  
  -- print(AnimalMod.header); -- load in the header for the project only once, all info about the project sits in this file
  end;
