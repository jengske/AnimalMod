print("register animal type: test");
test = {};
local testhudFile = Utils.getFilename("cowHud.dds", AnimalMod.HUDdir);
local i3dFilename = "";
local xmlFile = "";





function test:loadMap(name)
AnimalMod.registerAnimalType("test", "test", 5, 0.1, true, testhudFile, testhudFile, 0.001, i3dFilename, xmlFile);
end;



