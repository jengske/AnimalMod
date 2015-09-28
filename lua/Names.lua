--------------------------------------------------------
-- Author: Jengske_BE
-- Date: 18/08/2015
-- curFile: Names.lua
-- DO NOT MODIFY THIS FILE WITHOUT PERMISSION!!!
--------------------------------------------------------
-- Naming: used for random naming
AnimalMod.maleNames = { -- Animal male naming
[1] = "WhiteTail",
[2] = "Spotty",
[3] = "Duster",
[4] = "Mika",
[5] = "Killer",
[6] = "Bill",
[7] = "Max",
[8] = "Jef",
[9] = "Blacky",
[10] = "Smoky"};

AnimalMod.femaleNames = { -- Animal female naming
[1] = "WhiteSox",
[2] = "Bella",
[3] = "Didi",
[4] = "Mira",
[5] = "Kim",
[6] = "Ilona",
[7] = "Romy",
[8] = "Jesica",
[9] = "LadyD",
[10] = "Miranda"};

function AnimalMod:newName(gender, name)
	local m = #AnimalMod.maleNames;
	local f = #AnimalMod.femaleNames;
	local isMOK = false;
	local isFOK = false;
	
	
	if(gender == nil or name == nil) then
	print("error: no gender or name given" );
	return;
	end;
	
	if (gender == "male")then
		for _, names in pairs(AnimalMod.maleNames) do
			if (name == names) then 
				print("we got double entry " ..name ..", use AnimalMod:namesByGender(gender) to list the registered names."); 
				isMOK = false;
				return;
				else
				isMOK = true;
			
			end;
			
		end;
		--	
		if(isMOK == true) then
				print("---------- New male name --------------");
			local i = m;
			i = i+1;
			AnimalMod.maleNames[i] = name;
			print(name);
		end;	
			
			
	elseif(gender == "female") then
		for _, names in pairs(AnimalMod.femaleNames) do
			if (name == names) then 
				print("we got double entry " ..name ..", use AnimalMod:namesByGender(gender) to list the registered names.");
				isFOK = false;
				return;
				else
				isFOK = true;
			end;
			--
			if(isFOK == true) then
				print("---------- New female name --------------");
				local i = f;
				i = i+1;
				AnimalMod.femaleNames[i] = name;
				print(name);
				return ;
			end;
		end;
			
		else
		return ;
	end;
end;

-- usage:
-- AnimalMod:newName("male", "Mika"); (string male or female, string newName)
function AnimalMod:namesByGender(gender)
	if (gender == "male")then
		print("---------- Male names --------------");
		for index, name in pairs(AnimalMod.maleNames)do
		print(name);
		end;
	elseif(gender == "female") then
		print("---------- Female names --------------")
		for index, name in pairs(AnimalMod.femaleNames)do
		print(name);
		end;
	else
	return false;
	end;
end;
-- usage:
-- AnimalMod:namesByGender("male"); (string male or female)
-- AnimalMod:namesByGender("female"); (string male or female)
print ("AnimalMod.Names loaded");