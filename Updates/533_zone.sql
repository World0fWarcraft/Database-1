-- Riplash Ruins - Borean Tundra

-- missing objects
-- object guids 21192,21193,21994 shouldnt be there
DELETE FROM gameobject WHERE guid IN (21192,21193,21194,66212);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
-- campfire
(21192, 187703, 571, 1,2, 1408.9, 5972.87, 5.54805, 5.969027, 0, 0, -0.1564341, 0.9876884, 300, 255, 1),
(21193, 187703, 571, 1,2,1371.58, 5812.21, 6.0845, 0.9599299, 0, 0, 0.4617481, 0.8870111, 300, 255, 1),
(21194, 187703, 571, 1,2,1299.71, 5673.2, 12.184, 2.164206, 0, 0, 0.882947, 0.4694727, 300, 255, 1),
(66212, 187703, 571, 1,2,1325.65, 5984.97, 23.4195, 2.076939, 0, 0, 0.8616285, 0.5075394, 300, 255, 1);

-- Riplash Myrmidon
UPDATE creature SET position_x = 1299.672974, position_y = 5675.910156, position_z = 12.185277, orientation = 4.764749 WHERE guid = 56812;
UPDATE creature SET position_x = 1301.094971, position_y = 5669.865234, position_z = 12.184233, orientation = 0.01745329 WHERE guid = 56813;
UPDATE creature SET spawndist = 0, MovementType = 0, DeathState = 1 WHERE guid IN (56807,56808,56809,56810,56811,56814,56815);
DELETE FROM creature_addon WHERE guid IN (56807,56808,56809,56810,56811,56812,56813,56814,56815);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(56807,0,0,1,0,0,0,29266),
(56808,0,0,1,0,0,0,29266),
(56809,0,0,1,0,0,0,29266),
(56810,0,0,1,0,0,0,29266),
(56811,0,0,1,0,0,0,29266),
(56812,0,0,1,0,0,0,29266),
(56813,0,0,1,0,0,0,29266),
(56814,0,0,1,0,0,0,29266),
(56815,0,0,1,0,0,0,29266);

-- Riplash Siren
UPDATE creature SET spawndist = 0, MovementType = 0, DeathState = 1 WHERE guid IN (94791,94786,94790);
DELETE FROM creature_addon WHERE guid IN (94791,94786,94790);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(94791,0,0,1,0,0,0,29266),
(94786,0,0,1,0,0,0,29266),
(94790,0,0,1,0,0,0,29266);

-- Warsong Marksman
UPDATE creature SET spawndist = 0, MovementType = 0, DeathState = 1 WHERE guid IN (56816,56817);
DELETE FROM creature_addon WHERE guid IN (56816,56817);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(56816,0,0,1,0,0,0,29266),
(56817,0,0,1,0,0,0,29266);

-- Skadir Mariner
UPDATE creature SET position_x = 1430.870972, position_y = 5991.348145, position_z = 1.978656, orientation = 0.8377581 WHERE guid = 54487;
UPDATE creature SET position_x = 1396.416016, position_y = 5997.588867, position_z = 4.432795, orientation = 1.762783 WHERE guid = 54486;
UPDATE creature SET position_x = 1332.066040, position_y = 5948.334961, position_z = 20.587847, orientation = 1.343904 WHERE guid = 46851;
UPDATE creature SET position_x = 1315.520020, position_y = 5972.421875, position_z = 22.419306, orientation = 6.195919 WHERE guid = 46857;
UPDATE creature SET position_x = 1350.499023, position_y = 5981.200195, position_z = 22.878897, orientation = 3.839724 WHERE guid = 46858;
UPDATE creature SET position_x = 1497.328003, position_y = 5818.413086, position_z = 2.154404, orientation = 0.8901179 WHERE guid = 28698;
UPDATE creature SET position_x = 1462.738037, position_y = 5767.987793, position_z = 0.355965, orientation = 3.420845 WHERE guid = 28694;
UPDATE creature SET position_x = 1311.363037, position_y = 5811.811035, position_z = 4.511859, orientation = 2.775074 WHERE guid = 28702;
UPDATE creature SET position_x = 1472.052002, position_y = 5404.797852, position_z = 38.134491, orientation = 6.052513 WHERE guid = 28687;
UPDATE creature SET position_x = 1484.920044, position_y = 5419.273926, position_z = 38.134407, orientation = 5.157608 WHERE guid = 28689;
UPDATE creature SET position_x = 1360.277344, position_y = 5656.088867, position_z = 5.901335, orientation = 1.116595 WHERE guid = 28693;
DELETE FROM creature_addon WHERE guid IN (28687,28689);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(28687,0,8,1,0,0,0,NULL),
(28689,0,8,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (54488,46851,28704,28701,28703,28696,46857,46858,28691,28693,28697,54489);
DELETE FROM creature_movement WHERE id IN (54488,46851,28704,28701,28703,28696,46857,46858,28691,28693,28697,54489);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #54488
(54488,1,1395.96,5973.29,5.83542, 0, 0,5.92915, 0, 0),
(54488,2,1406.41,5963.79,3.28438, 0, 0,5.3833, 0, 0),
(54488,3,1414.91,5953.73,1.51606, 0, 0,5.23958, 0, 0),
(54488,4,1419.77,5937.5,2.048, 0, 0,4.64111, 0, 0),
(54488,5,1417.29,5916.33,5.96451, 0, 0,4.24371, 0, 0),
(54488,6,1414.84,5915.31,6.52699, 0, 0,2.9156, 0, 0),
(54488,7,1404.82,5927.11,5.15012, 0, 0,2.73967, 0, 0),
(54488,8,1392.81,5931.6,2.67203, 0, 0,2.22052, 0, 0),
(54488,9,1384.67,5942.82,2.89352, 0, 0,1.58639, 0, 0),
(54488,10,1384.29,5956.72,6.08352, 0, 0,1.37513, 0, 0),
(54488,11,1387.13,5969.79,7.42455, 8000, 0,100, 0, 0),
-- #46851
(46851,1,1332.066040,5948.334961,20.587847, 7000, 2552301,1.343904, 0, 0),
-- #46857
(46857,1,1315.520020,5972.421875,22.419306, 8000, 2552301,6.195919, 0, 0),
-- #46858
(46858,1,1350.499023,5981.200195,22.878897, 9000, 2552301,3.839724, 0, 0),
-- #28704
(28704,1,1336.36,5917.4,6.90951, 0, 0,0.198157, 0, 0),
(28704,2,1352.37,5921.23,5.55532, 0, 0,0.44163, 0, 0),
(28704,3,1364.04,5927.85,5.09685, 0, 0,0.641218, 0, 0),
(28704,4,1371.53,5935.38,5.77345, 8000, 0,0.7551, 0, 0),
(28704,5,1360.64,5925.08,5.02259, 0, 0,3.62495, 0, 0),
(28704,6,1349.75,5920.02,6.20286, 0, 0,3.5722, 0, 0),
(28704,7,1337.3,5917.53,7.1088, 0, 0,2.94781, 0, 0),
(28704,8,1327.32,5919.88,5.35774, 0, 0,2.67833, 0, 0),
(28704,9,1321.21,5923.92,6.41731, 0, 0,2.42701, 0, 0),
(28704,10,1316.48,5930.26,8.31106, 10000, 0,2.27385, 0, 0),
(28704,11,1317.92,5923.8,6.35066, 0, 0,5.3801, 0, 0),
-- #28701
(28701,1,1410.49,5865.27,12.1747, 10000, 0,1.71833, 0, 0),
(28701,2,1418.93,5835.04,11.689, 8000, 0,5.04842, 0, 0),
-- #28703
(28703,1,1324.89,5811.88,6.88028, 10000, 0,4.00248, 0, 0),
(28703,2,1337.93,5828.3,7.08855, 0, 0,1.16326, 0, 0),
(28703,3,1342.76,5842.06,9.12774, 0, 0,1.01011, 0, 0),
(28703,4,1350.97,5851.21,10.9639, 0, 0,0.412866, 0, 0),
(28703,5,1362.98,5854.65,11.5435, 0, 0,0.0947798, 0, 0),
(28703,6,1379.29,5854.6,14.3793, 10000, 0,6.23188, 0, 0),
(28703,7,1362.05,5854.54,11.4175, 0, 0,3.32089, 0, 0),
(28703,8,1351.47,5850.72,10.9127, 0, 0,3.70181, 0, 0),
(28703,9,1342.16,5841.58,8.94819, 0, 0,4.16519, 0, 0),
(28703,10,1335.83,5825.59,6.8142, 0, 0,4.14556, 0, 0),
-- #28696
(28696,1,1485.89,5762.13,16.5227, 0, 0,1.59294, 0, 0),
(28696,2,1484.53,5770.66,12.6047, 0, 0,1.93773, 0, 0),
(28696,3,1480.32,5784.96,4.20129, 10000, 0,1.93851, 0, 0),
(28696,4,1484.74,5770.5,12.7362, 0, 0,4.97801, 0, 0),
(28696,5,1485.86,5761.91,16.5981, 0, 0,4.58924, 0, 0),
(28696,6,1483.58,5745.66,23.6207, 10000, 0,4.26016, 0, 0),
-- #28691
(28691,1,1340.43,5518.42,5.32465, 0, 0,5.60627, 0, 0),
(28691,2,1375.22,5491.99,5.2647, 0, 0,5.5828, 0, 0),
(28691,3,1332.93,5524.56,5.32874, 0, 0,2.4687, 0, 0),
(28691,4,1298.34,5550.94,5.54836, 0, 0,2.47655, 0, 0),
-- #28693
(28693,1,1367.9,5665.86,5.92394, 0, 0,0.917104, 0, 0),
(28693,2,1346.98,5639.89,5.44788, 0, 0,4.03121, 0, 0),
(28693,3,1327.4,5614.92,5.32758, 0, 0,4.07048, 0, 0),
(28693,4,1304.14,5584.47,5.33742, 0, 0,4.0155, 0, 0),
(28693,5,1329.16,5616.5,5.33846, 0, 0,0.90925, 0, 0),
(28693,6,1359.95,5655.78,5.90462, 0, 0,0.936739, 0, 0),
-- #28697
(28697,1,1413.53,5722.46,23.6089, 0, 0,5.81065, 0, 0),
(28697,2,1423.79,5717.4,23.6013, 0, 0,5.9418, 0, 0),
(28697,3,1438.23,5714.88,23.6013, 0, 0,6.27166, 0, 0),
(28697,4,1451.94,5716.31,23.6013, 0, 0,0.334053, 0, 0),
(28697,5,1465.87,5722.19,23.6013, 0, 0,0.754241, 0, 0),
(28697,6,1472.37,5729.57,23.6013, 0, 0,1.4179, 0, 0),
(28697,7,1469.66,5735.92,23.6013, 0, 0,2.04229, 0, 0),
(28697,8,1464.38,5742.07,23.6013, 10000, 0,2.40358, 0, 0),
(28697,9,1469.48,5736.1,23.6013, 0, 0,5.12891, 0, 0),
(28697,10,1471.43,5729.35,23.6013, 0, 0,4.24298, 0, 0),
(28697,11,1466.46,5722.37,23.6013, 0, 0,3.70958, 0, 0),
(28697,12,1452.5,5716.49,23.6013, 0, 0,3.23048, 0, 0),
(28697,13,1438.22,5714.97,23.6013, 0, 0,3.03806, 0, 0),
(28697,14,1424.31,5717.02,23.6013, 0, 0,2.77103, 0, 0),
(28697,15,1414.26,5721.75,23.6115, 0, 0,2.46079, 0, 0),
(28697,16,1405.5,5729.67,23.6021, 10000, 0,2.3238, 0, 0),
-- #54489
(54489,1,1457.09,5950.71,-0.845253, 0, 0,1.45594, 0, 0),
(54489,2,1451.95,5914.37,0.949811, 8000, 0,4.62109, 0, 0);
-- Scrpts
DELETE FROM dbscripts_on_creature_movement WHERE id = 2552301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2552301,1,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Skadir Runecaster
UPDATE creature SET position_x = 1419.547241, position_y = 5788.960938, position_z = 1.994699, orientation = 0.238709 WHERE guid = 54497;
UPDATE creature SET position_x = 1474.719971, position_y = 5740.342773, position_z = 3.222162, orientation = 3.368485 WHERE guid = 54498;
UPDATE creature SET position_x = 1313.880005, position_y = 5681.657227, position_z = 12.184634, orientation = 4.223697 WHERE guid = 54494;
UPDATE creature SET position_x = 1454.834961, position_y = 5443.041016, position_z = 28.373199, orientation = 4.066617 WHERE guid = 54491;
UPDATE creature SET position_x = 1467.463989, position_y = 5734.672852, position_z = 2.861831, orientation = 0.8377581 WHERE guid = 54499;
DELETE FROM creature_addon WHERE guid IN (54490,54491,54493,54494);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(54490,0,0,1,0,0,0,45845),
(54491,0,0,1,0,0,0,45845),
(54493,0,0,1,0,0,0,45845),
(54494,0,0,1,0,0,0,45846);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (54495,54497,54498,54499,54496);
DELETE FROM creature_movement WHERE id IN (54495,54497,54498,54499,54496);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #54495
(54495,1,1409.64,5788.03,23.6009, 0, 0,1.65699, 0, 0),
(54495,2,1410.25,5797.97,23.6009, 0, 0,0.857453, 0, 0),
(54495,3,1418.24,5804.26,23.6009, 0, 0,0.248769, 0, 0),
(54495,4,1434.43,5807.89,23.8545, 0, 0,6.22958, 0, 0),
(54495,5,1451.04,5806.84,28.6076, 0, 0,6.09999, 0, 0),
(54495,6,1462.04,5802.33,28.7918, 0, 0,5.79762, 0, 0),
(54495,7,1466.81,5796.33,28.7918, 0, 0,4.88106, 0, 0),
(54495,8,1462.77,5790.79,28.7918, 10000, 0,4.07211, 0, 0),
(54495,9,1465.37,5796.48,28.7918, 0, 0,2.10076, 0, 0),
(54495,10,1459.32,5803.08,28.7918, 0, 0,2.49545, 0, 0),
(54495,11,1452.08,5806.82,28.7918, 0, 0,2.91956, 0, 0),
(54495,12,1434.88,5807.67,23.9923, 0, 0,3.2887, 0, 0),
(54495,13,1419.42,5804.91,23.601, 0, 0,3.5793, 0, 0),
(54495,14,1410.68,5799.41,23.601, 0, 0,4.32202, 0, 0),
(54495,15,1409.58,5788.15,23.601, 0, 0,5.13882, 0, 0),
(54495,16,1413.77,5782.19,23.601, 10000, 0,5.48832, 0, 0),
-- #54497
(54497,1,1409.77,5784.44,2.87173, 0, 0,4.25759, 0, 0),
(54497,2,1403.41,5764.92,2.53791, 0, 0,4.4131, 0, 0),
(54497,3,1399.15,5747.32,4.08372, 10000, 0,4.80972, 0, 0),
(54497,4,1406.22,5773,2.37137, 0, 0,1.29113, 0, 0),
(54497,5,1409.82,5784.41,2.85901, 0, 0,0.60862, 0, 0),
(54497,6,1419.3,5788.63,1.98782, 10000, 0,0.0825419, 0, 0),
-- #54498
(54498,1,1474.719971,5740.342773,3.222162, 8000, 2552001,3.368485, 0, 0),
-- #54499
(54499,1,1467.463989,5734.672852,2.861831, 10000, 2552001,0.8377581, 0, 0),
-- #54496
(54496,1,1424.96,5730.47,21.2622, 0, 0,1.6832, 0, 0),
(54496,2,1423.54,5737.8,18.8197, 0, 0,2.1871, 0, 0),
(54496,3,1417.87,5741.16,16.6668, 0, 0,3.2326, 0, 0),
(54496,4,1411.66,5738.67,14.4021, 0, 0,3.9159, 0, 0),
(54496,5,1407.51,5732.68,11.9747, 0, 0,4.60312, 0, 0),
(54496,6,1408.37,5726.35,9.51406, 0, 0,5.43947, 0, 0),
(54496,7,1413.4,5722.44,7.45063, 0, 0,5.98527, 0, 0),
(54496,8,1424.47,5721.76,4.00448, 0, 0,0.0712185, 0, 0),
(54496,9,1432.26,5722.07,3.24429, 10000, 0,6.24052, 0, 0),
(54496,10,1424.59,5721.15,4.00673, 0, 0,3.11856, 0, 0),
(54496,11,1417.98,5721.43,5.88726, 0, 0,2.93007, 0, 0),
(54496,12,1413.48,5722.81,7.43448, 0, 0,2.52166, 0, 0),
(54496,13,1408.52,5726.69,9.54506, 0, 0,2.17923, 0, 0),
(54496,14,1406.94,5731.47,11.3769, 0, 0,1.46609, 0, 0),
(54496,15,1416.55,5740.59,16.092, 0, 0,6.19183, 0, 0),
(54496,16,1423.64,5738.69,18.7034, 0, 0,5.4135, 0, 0),
(54496,17,1425,5730.8,21.0897, 0, 0,4.43569, 0, 0),
(54496,18,1421.7,5723.09,23.6478, 10000, 0,4.25112, 0, 0);
-- Scrpts
DELETE FROM dbscripts_on_creature_movement WHERE id = 2552001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2552001,1,1,1,0,0,0,0,6,5,273,274,0,0,0,0,'');
