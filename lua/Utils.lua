
AnimalMod.Utils = {};
-- class inherits --
function AnimalMod.Utils:inheritsFrom( baseClass )

    local new_class = {}
    local class_mt = { __index = new_class }

    function new_class:create()
        local newinst = {}
        setmetatable( newinst, class_mt )
        return newinst
    end

    if nil ~= baseClass then
        setmetatable( new_class, { __index = baseClass } )
    end

    -- Implementation of additional OO properties starts here --

    -- Return the class object of the instance
    function new_class:class()
        return new_class
    end

    -- Return the super class object of the instance
    function new_class:superClass()
        return baseClass
    end

    -- Return true if the caller is an instance of theClass
    function new_class:isa( theClass )
        local b_isa = false

        local cur_class = new_class

        while ( nil ~= cur_class ) and ( false == b_isa ) do
            if cur_class == theClass then
                b_isa = true
            else
                cur_class = cur_class:superClass()
            end
        end

        return b_isa
    end

    return new_class
end;

-- to do: sound system: create a pool for sounds to be used during gameplay
AnimalMod.animal.soundPools = {};
AnimalMod.animal.soundPoolsUsed = {};

function AnimalMod.Utils.addSound(animalType, fileName, volume, isplaying )
    if(AnimalMod.animal.sounds[animalType] == nil) then
        AnimalMod.animal.sounds[animalType] = animalType;
    end;
end;

function AnimalMod.Utils:createSpool(animalType, amount)
    local s = "soundPools";
    if(AnimalMod.animal[soundPools] == not nil)then
        print("AnimalMod ERROR: We already have a soundpool for this animalType.");
        return;
    end;
    
    if(AnimalMod.animal[soundPools][animalType] == nil)then
        AnimalMod.animal[soundPools][animalType] = animalType;
    else
        return false;
    end;
end;

AnimalMod.Utils:inheritsFrom( AnimalMod );
