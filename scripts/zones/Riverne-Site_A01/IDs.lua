-----------------------------------
-- Area: Riverne-Site_A01
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[dsp.zone.RIVERNE_SITE_A01] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6381, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6387, -- Obtained: <item>.
        GIL_OBTAINED            = 6388, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6390, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY = 6401, -- There is nothing out of the ordinary here.
        CONQUEST_BASE           = 7048, -- Tallying conquest results...
        SD_VERY_SMALL           = 7585, -- The spatial displacement is very small. If you only had some item that could make it bigger...
        SD_HAS_GROWN            = 7586, -- The spatial displacement has grown.
        SPACE_SEEMS_DISTORTED   = 7587, -- The space around you seems oddly distorted and disrupted.
        MONUMENT                = 7594, -- Something has been engraved on this stone, but the message is too difficult to make out.
        HOMEPOINT_SET           = 7722, -- Home point set!
    },
    mob =
    {
        HELIODROMOS_PH_OFFSET    = 16900107,
        HELIODROMOS_OFFSET       = 16900110,
        CARMINE_DOBSONFLY_OFFSET = 16900230,
    },
    npc =
    {
        RIV_A_DISPLACEMENT_OFFSET = 16900334,
    },
}

return zones[dsp.zone.RIVERNE_SITE_A01]