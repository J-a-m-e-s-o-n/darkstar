-----------------------------------
-- Area: Ru'Aun Gardens
-- NPC:  ??? (Seiryu's Spawn)
-- Allows players to spawn the HNM Seiryu with a Gem of the East and a Springstone.
-- !pos 569 -70 -80 130
-----------------------------------
local ID = require("scripts/zones/RuAun_Gardens/IDs");
require("scripts/globals/status");

function onTrade(player,npc,trade)
    -- Trade Gem of the East and Springstone
    if (not GetMobByID(ID.mob.SEIRYU):isSpawned() and trade:hasItemQty(1418,1) and trade:hasItemQty(1419,1) and trade:getItemCount() == 2) then
        player:tradeComplete();
        SpawnMob(ID.mob.SEIRYU):updateClaim(player);
        player:showText(npc,ID.text.SKY_GOD_OFFSET + 9);
        npc:setStatus(dsp.status.DISAPPEAR);
    end
end;

function onTrigger(player,npc)
    player:messageSpecial(ID.text.SKY_GOD_OFFSET + 1);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
