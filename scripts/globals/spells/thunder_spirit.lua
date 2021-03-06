-----------------------------------------
-- Spell: ThunderSpirit
-- Summons ThunderSpirit to fight by your side
-----------------------------------------
require("scripts/globals/summon")
require("scripts/globals/bcnm")
require("scripts/globals/pets")
require("scripts/globals/msg")
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    local result = 0
    if (caster:hasPet()) then
        result = dsp.msg.basic.ALREADY_HAS_A_PET
    elseif (not caster:canUsePet()) then
        result = dsp.msg.basic.CANT_BE_USED_IN_AREA
    elseif (caster:getObjType() == dsp.objType.PC) then
        result = avatarMiniFightCheck(caster)
    end
    return result
end

function onSpellCast(caster,target,spell)
    caster:spawnPet(dsp.pet.id.THUNDER_SPIRIT)

    return 0
end
