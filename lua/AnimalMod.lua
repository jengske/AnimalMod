-- BaseClass for the AnimalMod
AnimalMod = {}; -- projectName/modName
AnimalMod.ClassName = "AnimalMod";
-- directory structure
AnimalMod.baseDir = g_currentModDirectory;
-- file handling inspired by courseplay.lua - Jakob Tischler / Thomas Gärtner / Satissis
if AnimalMod.baseDir:sub(-1) ~= '/' then
	AnimalMod.baseDir = AnimalMod.baseDir .. '/';
end;

--local sonOfaBangSonOfaBoom = {
--	['44d143f3e847254a55835a8298ba4e21'] = true;
--	['6fbb6a98a4054b1d603bd8c591d572af'] = true;
--	['87a96c3bb39fa285d7ed2fb5beaffc16'] = true;
--	['d4043d2f9265e18c794be4159faaef5c'] = true;
--	['f4a77acf03e969bbb2b99fee35d137fb'] = true;
--	['7fdd2fa7e858ae062946bbbc1143567c'] = true;
--};
--AmManager.isDeveloper = sonOfaBangSonOfaBoom[getMD5(g_settingsNickname)];
--if AmpManager.isDeveloper then
--	print('Special dev magic for AnimalMod developer unlocked. You go, boy!');
--else
--	print('No cookies for you! (please wait until we have some limited form of a working version...)');
--	Am.houstonWeGotAProblem = true;
--	return;
--end;

local baseDir = AnimalMod.baseDir;
AnimalMod.XMLdir = baseDir .."xml/"; -- xml directory
local xmlDir = AnimalMod.XMLdir;
AnimalMod.LUAdir = baseDir .."lua/"; -- lua directory
local luaDir = AnimalMod.LUAdir;
AnimalMod.I3Ddir = baseDir .."i3d/"; -- i3d directory
local i3dDir = AnimalMod.I3Ddir;
AnimalMod.IMGdir = baseDir .."img/"; -- img directory
local imgDir = AnimalMod.IMGdir;
AnimalMod.TRGdir = baseDir .."triggers/"; -- trigger directory
local trgDir = AnimalMod.TRGdir;
AnimalMod.WAVdir = baseDir .."sounds/"; -- sound directory, must be ordered sounds/animaltype
local wavDir = AnimalMod.WAVdir;

AnimalMod.modName = g_currentModName;
local ModName = AnimalMod.modName;

-- files needed by the AnimalMod: you need to name the files like what thy do, example: breed.lua handles the breeding part of the mod.
local filesToLoad = { -- place here new functions or addons for the mod, we will load these by number order.
  [1] = 'header.lua', -- hold the project & team information
  [2] = 'database.lua', -- setup the main table structure
  [3] = 'States.lua', -- states system
  [4] = 'Names.lua', -- naming system
  [5] = 'Utils.lua',-- Utils default functions to make live easy
  [6] = 'SoundUtils.lua' -- Sound manager
  }; 


local function letsStart() -- load all files needed by the AnimalMod
  local numFilesToLoad, numFilesLoaded = #(filesToLoad) +1, 1;-- + 3, 3;
  for _,file in ipairs(filesToLoad) do
		local filePath = luaDir .. file;

		assert(fileExists(filePath), '\tAnimalMod ERROR: could not load file ' .. filePath);
		source(filePath);
	
		numFilesLoaded = numFilesLoaded + 1;
	end;
	
	print("------------------------------------------------------------ AnimalMod --------------------------------------------------------------------------------");
	print(AnimalMod.header); -- load in the header for the project only once, all info about the project sits in this file
	print(('### AnimalMod: initialized %d/%d files (v%s)'):format(numFilesLoaded, numFilesToLoad, AnimalMod.version));
 	print("-------------------------------------------------------------------------------------------------------------------------------------------------------");
end;

letsStart();
for k, v in pairs(AnimalMod) do
	print(k, " = ", tostring(v));
end;
local function checkSoundDir()
		if (wavDir ~= nil)then
			print("AnimalMod error: no sounds folder found");
			return false;
		else
			return true;
		end;
		local horse = wavDir .."horse";
		local cow = wavDir .."cow";
		if (horse == nil) then
			print("no Horse sounds found");
		end;
		if (cow == nil) then
			print("no Cow sounds found");
		end;
	end;
