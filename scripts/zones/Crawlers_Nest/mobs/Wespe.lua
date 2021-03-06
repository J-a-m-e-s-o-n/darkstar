-----------------------------------
-- Area: Crawlers' Nest (197)
--  Mob: Wespe
-- Note: PH for Demonic Tiphia
-----------------------------------
local ID = require("scripts/zones/Crawlers_Nest/IDs");
require("scripts/globals/groundsofvalor");
require("scripts/globals/mobs");

function onMobDeath(mob, player, isKiller)
    checkGoVregime(player,mob,691,2);
end;

function onMobDespawn(mob)
    phOnDespawn(mob,ID.mob.DEMONIC_TIPHIA_PH,5,math.random(7200,28800)); -- 2 to 8 hours
end;
