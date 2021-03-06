-----------------------------------
-- Area: Tahrongi Canyon
--  NPC: Excavation Point
-----------------------------------
require("scripts/globals/excavation");
local ID = require("scripts/zones/Tahrongi_Canyon/IDs");
-----------------------------------

function onTrade(player,npc,trade)
    startExcavation(player,player:getZoneID(),npc,trade,901);
end;

function onTrigger(player,npc)
    player:messageSpecial(ID.text.MINING_IS_POSSIBLE_HERE,605);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;