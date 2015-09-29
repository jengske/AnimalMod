AnimalMod.SoundUtils = {};
AnimalMod.Utils:inheritsFrom( AnimalMod );
-- to do: sound system: create a pool for sounds to be used during gameplay
-- we go use the pools to load sounds to the animals from out the AnimalMod/sound/animalType root.
-- idea is to also load sounds on animals where there is no sound defined on the animal.zip.
-- we go create a AnimalMod.soundUtils for handle sound creations, this i must see during development
-- the utils files will be evaluated

AnimalMod.animals.soundPools = {};
AnimalMod.animals.soundPoolsUsed = {};

function AnimalMod.SoundUtils.addSound(animalType, fileName, volume, isplaying )
    if(AnimalMod.animals.sounds[animalType] == nil) then
        AnimalMod.animals.sounds[animalType] = animalType;
    end;
end;

function AnimalMod.SoundUtils.createSpool(animalType, amount)
    local s = "soundPools";
    if(AnimalMod.animals[soundPools] == not nil)then
        print("AnimalMod ERROR: We already have a soundpool for this animalType.");
        return;
    end;
    
    if(AnimalMod.animals[soundPools][animalType] == nil)then
        AnimalMod.animals[soundPools][animalType] = animalType;
    else
        return false;
    end;
end;
