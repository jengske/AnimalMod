-- BaseClass for the AnimalMod
AnimalMod = {}; -- projectName/modName
AnimalMod.ClassName = "AnimalMod";
-- directory structure
AnimalMod.baseDir = g_currentModDirectory;
-- file handling inspired by courseplay.lua - Jakob Tischler / Thomas Gärtner / Satissis
if AnimalMod.baseDir:sub(-1) ~= '/' then
	AnimalMod.baseDir = AnimalMod.baseDir .. '/';
end;

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
  [2] = 'Utils.lua'}; -- Utils default functions to make live easy


local function letsStart() -- load all files needed by the AnimalMod
  local numFilesToLoad, numFilesLoaded = #(filesToLoad) +1, 1;-- + 3, 3;
  for _,file in ipairs(filesToLoad) do
		local filePath = luaDir .. file;

		assert(fileExists(filePath), '\tAnimalMod ERROR: could not load file ' .. filePath);
		source(filePath);
	
		numFilesLoaded = numFilesLoaded + 1;
	end;
	print(AnimalMod.header); -- load in the header for the project only once, all info about the project sits in this file
	print(('### AnimalMod: initialized %d/%d files (v%s)'):format(numFilesLoaded, numFilesToLoad, AnimalMod.version));
 	print("-------------------------------------------------------------------------------------------------------------------------------------------------------");
end;

letsStart();
