INSERT INTO players (name)
     VALUES ('John Smith');
INSERT INTO statistics (player_id, time_alive, score)
     VALUES (LAST_INSERT_ID(),843, 182);