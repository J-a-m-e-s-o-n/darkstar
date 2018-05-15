-----------------------------------------
-- ID: 5554
-- Item: serving_of_squirrels_delight
-- Food Effect: 4Hrs, All Races
-----------------------------------------
-- MP % 13 (cap 95)
-- MP Recovered While Healing 2
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,14400,5554);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(dsp.mod.FOOD_MPP, 13);
    target:addMod(dsp.mod.FOOD_MP_CAP, 95);
    target:addMod(dsp.mod.MPHEAL, 2);
end;

function onEffectLose(target, effect)
    target:delMod(dsp.mod.FOOD_MPP, 13);
    target:delMod(dsp.mod.FOOD_MP_CAP, 95);
    target:delMod(dsp.mod.MPHEAL, 2);
end;
