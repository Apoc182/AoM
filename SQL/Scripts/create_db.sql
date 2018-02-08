CREATE TABLE players(

	player_id INT NOT NULL auto_increment,
    name VARCHAR(20) NOT NULL,
    PRIMARY KEY ( player_id )


);

CREATE TABLE statistics(

	stat_id INT NOT NULL auto_increment,
    player_id INT NOT NULL,
    time_alive INT(20) NOT NULL,
    beard_used VARCHAR(20),
    score INT(20),
    creation_date DATETIME DEFAULT current_timestamp,
    PRIMARY KEY ( stat_id ),
    foreign key ( player_id ) REFERENCES players(player_id)


);