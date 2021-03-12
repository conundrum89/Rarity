local addonName, addonTable = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Rarity")
local CONSTANTS = Rarity.constants

local mopMounts = {
	-- 5.x
	["Clutch of Ji-Kun"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Clutch of Ji-Kun"],
		spellId = 139448,
		itemId = 95059,
		npcs = {99999},
		tooltipNpcs = {69712},
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true
		},
		chance = 50,
		statisticId = {8171, 8169, 8172, 8170},
		sourceText = L["All raid formats except Raid Finder"],
		lockBossName = "Ji-Kun",
		coords = {{m = 510, x = 49.7, y = 41.6, i = true}}
	},
	["Kor'kron Juggernaut"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Kor'kron Juggernaut"],
		spellId = 148417,
		itemId = 104253,
		npcs = {99999},
		tooltipNpcs = {71865},
		instanceDifficulties = {[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true},
		chance = 100,
		statisticId = {8638, 8637},
		sourceText = L["Mythic difficulty"],
		wasGuaranteed = true,
		lockBossName = "Garrosh Hellscream",
		coords = {{m = 567, x = 49.4, y = 71.3, i = true}}
	},
	["Reins of the Amber Primordial Direhorn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Reins of the Amber Primordial Direhorn"],
		spellId = 138424,
		itemId = 94230,
		npcs = {69841},
		chance = 20,
		sourceText = L["The Warbringer will be riding the mount color he has a chance to drop."],
		coords = {
			{m = 418, x = 39.08, y = 67.13},
			{m = 422, x = 47.47, y = 61.32},
			{m = 388, x = 36.53, y = 85.67},
			{m = 379, x = 75.09, y = 67.65},
			{m = 371, x = 52.73, y = 18.99}
		}
	},
	["Reins of the Astral Cloud Serpent"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Reins of the Astral Cloud Serpent"],
		spellId = 127170,
		itemId = 87777,
		npcs = {99999},
		tooltipNpcs = {60410},
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true
		},
		chance = 100,
		statisticId = {6797, 6798, 7924, 7923},
		sourceText = L["Dropped by Elegon in Mogu'shan Vaults (all raid formats except Raid Finder)"],
		blackMarket = true,
		lockBossName = "Elegon",
		coords = {{m = 471, x = 21.7, y = 51.1, i = true}}
	},
	["Reins of the Bone-White Primal Raptor"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.COLLECTION,
		name = L["Reins of the Bone-White Primal Raptor"],
		spellId = 138640,
		itemId = 94290,
		collectedItemId = 94288,
		chance = 9999,
		obtain = L["Dropped from dinosaurs on Isle of Giants"],
		tooltipNpcs = {
			69992,
			70013,
			70012,
			70015,
			70014,
			70006,
			69925,
			69993,
			70004,
			70005,
			70007,
			70020,
			70016,
			69983,
			70017,
			70019,
			70018,
			70011,
			70009,
			69991,
			70021,
			70010,
			70008
		},
		sourceText = L[
			"Earned by giving 9999 Giant Dinosaur Bones to Ku'ma on Isle of Giants. Giant Dinosaur bones drop from all dinosaurs and Zandalari Dinomancers on Isle of Giants."
		],
		coords = {{m = 507}}
	},
	["Reins of the Cobalt Primordial Direhorn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Reins of the Cobalt Primordial Direhorn"],
		spellId = 138423,
		itemId = 94228,
		npcs = {99999},
		tooltipNpcs = {69161},
		questId = 32519,
		chance = 2000,
		statisticId = {8147},
		enableCoin = true,
		worldBossFactionless = true,
		coords = {{m = 507, x = 50.6, y = 54.4}}
	},
	["Reins of the Heavenly Onyx Cloud Serpent"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Reins of the Heavenly Onyx Cloud Serpent"],
		spellId = 127158,
		itemId = 87771,
		npcs = {99999},
		tooltipNpcs = {60491},
		questId = 32099,
		chance = 2000,
		statisticId = {6989},
		enableCoin = true,
		worldBossFactionless = true,
		blackMarket = true,
		coords = {
			{
				m = 379,
				x = 53.7,
				y = 64.7
			}
		}
	},
	["Reins of the Jade Primordial Direhorn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Reins of the Jade Primordial Direhorn"],
		spellId = 138426,
		itemId = 94231,
		npcs = {69842},
		chance = 20,
		sourceText = L["The Warbringer will be riding the mount color he has a chance to drop."],
		coords = {
			{m = 418, x = 39.08, y = 67.13},
			{m = 422, x = 47.47, y = 61.32},
			{m = 388, x = 36.53, y = 85.67},
			{m = 379, x = 75.09, y = 67.65},
			{m = 371, x = 52.73, y = 18.99}
		}
	},
	["Reins of the Slate Primordial Direhorn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Reins of the Slate Primordial Direhorn"],
		spellId = 138425,
		itemId = 94229,
		npcs = {69769},
		chance = 20,
		sourceText = L["The Warbringer will be riding the mount color he has a chance to drop."],
		coords = {
			{m = 418, x = 39.08, y = 67.13},
			{m = 422, x = 47.47, y = 61.32},
			{m = 388, x = 36.53, y = 85.67},
			{m = 379, x = 75.09, y = 67.65},
			{m = 371, x = 52.73, y = 18.99}
		}
	},
	["Reins of the Thundering Cobalt Cloud Serpent"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Reins of the Thundering Cobalt Cloud Serpent"],
		spellId = 139442,
		itemId = 95057,
		npcs = {99999},
		tooltipNpcs = {69099},
		questId = 32518,
		chance = 2000,
		statisticId = {8146},
		enableCoin = true,
		worldBossFactionless = true,
		blackMarket = true,
		coords = {{m = 504, x = 60.5, y = 37.3}}
	},
	["Reins of the Thundering Onyx Cloud Serpent"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Reins of the Thundering Onyx Cloud Serpent"],
		spellId = 148476,
		itemId = 104269,
		npcs = {73167},
		chance = 100,
		sourceText = L["Players have a personal loot chance to obtain this item."],
		coords = {{m = 554, x = 67.8, y = 59}}
	},
	["Son of Galleon's Saddle"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Son of Galleon's Saddle"],
		spellId = 130965,
		itemId = 89783,
		npcs = {99999},
		tooltipNpcs = {62346},
		questId = 32098,
		chance = 2000,
		statisticId = {6990},
		enableCoin = true,
		worldBossFactionless = true,
		coords = {{m = 376, x = 71.6, y = 64.4}}
	},
	["Spawn of Horridon"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.MOP,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Spawn of Horridon"],
		spellId = 136471,
		itemId = 93666,
		npcs = {99999},
		tooltipNpcs = {68476},
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true
		},
		chance = 66,
		statisticId = {8151, 8149, 8152, 8150},
		sourceText = L["All raid formats except Raid Finder"],
		lockBossName = "Horridon",
		coords = {{m = 508, x = 26.8, y = 78.7, i = true}}
	}
}

Rarity.ItemDB.MergeItems(Rarity.ItemDB.mounts, mopMounts)