INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1557056661920687200');

-- Void Spawner - Quest - Warp Rifts SAI
SET @ENTRY := 20143;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,0,2000,5000,15000,23000,11,34943,0,0,0,0,0,1,0,0,0,0,0,0,0,'Void Spawner - Quest - Warp Rifts - Out of Combat - Cast ''Summon Unstable Voidwalker'''),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Void Spawner - Linked - Self: Increment Phase by 1'),
(@ENTRY,0,2,0,1,4,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Void Spawner - Out of Combat (Phase 3) - Self: Despawn in 1000 ms');
