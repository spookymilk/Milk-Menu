dofile("data/functions.lua");
TABLE_ONE={"<-- Go Back","Base Tablet","Tablet 00","Tablet 01","Tablet 02","Tablet 03","Tablet 04","Tablet 05","Tablet 06","Tablet 07","Tablet 08","Tablet 09","Tablet 10","Tablet 11","Tablet 12","Tablet Corpse","Tablet Tree"};
TABLE_TWO={"<-- Go Back","Chest","Chest Rare","Egg: Fire","Egg: Monster","Egg: Red", "Egg: Slime","Egg: Worm","Gold Nugget","Thunderstone","Beer Bottle","Big Rock","Ladder","Burning Barrel","Oil Barrel",
"Radioactive Barrel","Long Vase","Explosives","Box","Small Box","Bucket","Small Lantern","Cart","Chair","Crate","Gem","Lantern","Minecart","Propane Tank","Pressure Tank","Sandbag","Skateboard","Skull","Bone",
"Table","Vase","Wheel","Sea of Water","Sea of Lava","Sea of Oil","Sea of Acid","Sea of Toxic Sludge","Sea of Slime","Sea of Alcohol","Sea of Gold","Bomb","Holy Bomb","TNT","Cluster Bomb","Small Bomb","Nuke (DANGEROUS)","Blue Firework","Green Firework","Orange Firework","Pink Firework","Pile of Gunpowder",
"Acid Trap","Electricity Trap","Ignition Trap #1","Ignition Trap #2","Seamine","Chandelier","Brewing Stand"};
TABLE_MONSTERS_FRIENDLY={"<-- Go Back","acidshooter","alchemist","ant","assassin","barfer","bat","bigbat","bigfirebug",
"bigzombie","blob","bloodcrystal_physics","bloom","boss_dragon","chest_mimic","crystal_physics","darkghost","deer","drone","duck","eel","firebug",
"firemage","firemage_weak","fireskull","fireskull_weak","fish","fish_large","flamer","fly","frog","fungus",
"fungus_big","gazer","ghost","ghoul","giant","giantshooter","giantshooter_weak","icer","iceskull","lasershooter",
"longleg","lurker","maggot","miner","miner_fire","miner_santa","miner_weak","miniblob","missilecrab","necromancer","necromancer_shop",
"phantom_a","phantom_b","playerghost","rat","roboguard","scavenger_clusterbomb","scavenger_grenade","scavenger_heal","scavenger_leader",
"scavenger_mine","scavenger_poison","scavenger_smg","scorpion","sheep","sheep_bat","sheep_fly","shooterflower",
"shotgunner","shotgunner_weak","skullfly","skullrat","skycrystal_physics","slimeshooter","slimeshooter_nontoxic","slimeshooter_weak",
"sniper","spitmonster","tank","tank_rocket","tank_super","tentacler","tentacler_small","thundermage","turret_left",
"turret_right","wand_ghost","wizard_dark","wizard_poly","wizard_tele","wolf","worm","worm_big","worm_end",
"worm_skull","worm_tiny","wraith","wraith_glowing","wraith_storm","zombie","zombie_weak"};
TABLE_MONSTERS_ENEMY={"<-- Go Back","acidshooter","alchemist","ant","assassin","barfer","bat","bigbat","bigfirebug",
"bigzombie","blob","bloodcrystal_physics","bloom","boss_dragon","chest_mimic","crystal_physics","darkghost","deer","drone","duck","eel","firebug",
"firemage","firemage_weak","fireskull","fireskull_weak","fish","fish_large","flamer","fly","frog","fungus",
"fungus_big","gazer","ghost","ghoul","giant","giantshooter","giantshooter_weak","icer","iceskull","lasershooter",
"longleg","lurker","maggot","miner","miner_fire","miner_santa","miner_weak","miniblob","missilecrab","necromancer","necromancer_shop",
"phantom_a","phantom_b","playerghost","rat","roboguard","scavenger_clusterbomb","scavenger_grenade","scavenger_heal","scavenger_leader",
"scavenger_mine","scavenger_poison","scavenger_smg","scorpion","sheep","sheep_bat","sheep_fly","shooterflower",
"shotgunner","shotgunner_weak","skullfly","skullrat","skycrystal_physics","slimeshooter","slimeshooter_nontoxic","slimeshooter_weak",
"sniper","spitmonster","tank","tank_rocket","tank_super","tentacler","tentacler_small","thundermage","turret_left",
"turret_right","wand_ghost","wizard_dark","wizard_poly","wizard_tele","wolf","worm","worm_big","worm_end",
"worm_skull","worm_tiny","wraith","wraith_glowing","wraith_storm","zombie","zombie_weak"};
TABLE_TELEPORT={"<-- Go Back","Spawn","Pyramid","The Boss","Tree","Statue","Lake","Shrine","Pond","Skull","E.S.A","Lava",
"Holy Mountain #1","Holy Mountain #2","Holy Mountain #3","Holy Mountain #4","Holy Mountain #5","The End","The Moon","The Underworld","Bottom of the Lake","Dragon Cave","East Parrallel","West Parrallel","Random Location","Earth Essence","Water Essence","Fire Essence","Spirit Essence","Gold Stash #1","Gold Stash #2",
"Gold Stash #3","1,000,000 Below","1,000,000 Above","The Tower","Cloudscape/Air Essence"};
TABLE_PHRASE={"Got Milk?"};
TABLE_ALC={"<-- Go Back","Acid","Alcohol","Blood","Blood_fungi","Blood_worm","Bone","Brass","Cement","Coal","Copper","Creepy_liquid","Diamond","Fungi","Fungi_creeping","Gold","Grass","Gunpowder","Gunpowder_explosive","Honey","Lava","Magic_liquid","Magic_liquid_berserk","Magic_liquid_charm","Magic_liquid_invisibility","Magic_liquid_polymorph","Magic_liquid_random_polymorph","Magic_liquid_teleportation","Midas","Midas_precursor","Mud","Oil","Poison","Purifying_powder","Radioactive_liquid","Rotten_meat","Salt","Sand","Silver","Slime","Snow","Sodium","Soil","Swamp","Urine","Void_liquid","Water","Water_ice","Water_swamp","Wax"};
TABLE_TIME={"1","2","3","4","5","6","7","8","9","0"};
TABLE_PLAYERSPRITES={"<-- Go Back","Default","Eldritch","Fire","Milky","Santa","Unknown","Urine"}
TABLE_GUYS={"water","water_ice","water_swamp","oil","alcohol","swamp","mud","blood","blood_fungi","blood_worm","radioactive_liquid","cement","acid","lava","urine","poison","magic_liquid_teleportation","magic_liquid_polymorph","magic_liquid_random_polymorph","magic_liquid_berserk","magic_liquid_charm","magic_liquid_invisibility"};
TABLE_GUYSTWO={"sand","bone","soil","honey","slime","snow","rotten_meat","wax","gold","silver","copper","brass","diamond","coal","gunpowder","gunpowder_explosive","grass","fungi"};
TABLE_ALLMATERIALS={};

getAllMaterial(CellFactory_GetAllLiquids(),TABLE_ALLMATERIALS);
getAllMaterial(CellFactory_GetAllSands(),TABLE_ALLMATERIALS);
getAllMaterial(CellFactory_GetAllGases(),TABLE_ALLMATERIALS);
getAllMaterial(CellFactory_GetAllSolids(),TABLE_ALLMATERIALS);
getAllMaterial(CellFactory_GetAllFires(),TABLE_ALLMATERIALS);

