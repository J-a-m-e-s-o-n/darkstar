-----------------------------------
-- Area: Batallia Downs
--  MOB: Goblin Gambler
-----------------------------------
require("scripts/globals/fieldsofvalor");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
local ID = require("scripts/zones/Batallia_Downs/IDs");
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkRegime(player,mob,74,2);

    if (ENABLE_ACP == 1 and (player:hasKeyItem(dsp.ki.BOWL_OF_BLAND_GOBLIN_SALAD) == false) and player:getCurrentMission(ACP) >= THE_ECHO_AWAKENS) then
        -- Guesstimating 15% chance
        if (math.random(1,100) >= 85) then
            player:addKeyItem(dsp.ki.BOWL_OF_BLAND_GOBLIN_SALAD);
            player:messageSpecial(ID.text.KEYITEM_OBTAINED,dsp.ki.BOWL_OF_BLAND_GOBLIN_SALAD);
        end
    end

end;