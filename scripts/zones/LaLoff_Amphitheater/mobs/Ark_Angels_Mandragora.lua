-----------------------------------
-- Area: LaLoff Amphitheater
--  MOB: Ark Angel's Mandragora
-----------------------------------
require("scripts/globals/status");
-----------------------------------

-- TODO: Determine spell list and behavior.  Potentially includes Breakga and Bindga, unless they're TP moves.
-- TODO: Implement shared spawn and victory conditions with Ark Angel's Tiger.

function onMobSpawn(mob)
end;

function onMobEngaged(mob,target)
    local mobid = mob:getID()

    for member = mobid-3, mobid+4 do
        if (GetMobAction(member) == 16) then
            GetMobByID(member):updateEnmity(target);
        end
    end
end;

function onMobFight(mob,target)

end;

function onMobDeath(mob, player, isKiller)
end;
