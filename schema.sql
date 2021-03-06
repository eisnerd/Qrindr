CREATE TABLE IF NOT EXISTS quakechampions (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  uuid VARCHAR(32) NOT NULL,
  player1 VARCHAR(500) NOT NULL,
  player2 VARCHAR(500) NOT NULL,
  `password` VARCHAR(500) NOT NULL,
  bestof INT NOT NULL,
  datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated INT DEFAULT 0, /*TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,*/
  champ_mode INT DEFAULT 0,
  map_ban_1 INT DEFAULT 0,
  map_ban_2 INT DEFAULT 0,
  map_ban_3 INT DEFAULT 0,
  map_ban_4 INT DEFAULT 0,
  map_pick_1 INT DEFAULT 0,
  map_pick_2 INT DEFAULT 0,
  map_pick_3 INT DEFAULT 0,
  map_pick_4 INT DEFAULT 0,
  champ_ban_1 INT DEFAULT 0,
  champ_ban_2 INT DEFAULT 0,
  champ_ban_3 INT DEFAULT 0,
  champ_ban_4 INT DEFAULT 0,
  champ_ban_5 INT DEFAULT 0,
  champ_pick_1 INT DEFAULT 0,
  champ_pick_2 INT DEFAULT 0,
  champ_pick_3 INT DEFAULT 0,
  champ_pick_4 INT DEFAULT 0,
  champ_pick_5 INT DEFAULT 0,
  champ_pick_6 INT DEFAULT 0,
  champ_pick_7 INT DEFAULT 0,
  champ_pick_8 INT DEFAULT 0,
  champ_pick_9 INT DEFAULT 0,
  champ_pick_10 INT DEFAULT 0,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS quakechampions_matchmaking (
  m_id MEDIUMINT NOT NULL AUTO_INCREMENT,
  m_name VARCHAR(500),
  m_alias VARCHAR(500),
  m_region VARCHAR(500),
  m_updated INT DEFAULT 0, /*TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,*/
  m_skillrating INT DEFAULT 0,
  m_datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (m_id)
);

CREATE TABLE IF NOT EXISTS quakechampions_grindr (
  g_id MEDIUMINT NOT NULL AUTO_INCREMENT,
  g_player1 VARCHAR(500),
  g_player2 VARCHAR(500),
  g_serial MEDIUMINT NOT NULL,
  g_datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (g_id)
);

CREATE TABLE IF NOT EXISTS quakechampions_chat (
  q_id MEDIUMINT NOT NULL AUTO_INCREMENT,
  q_uuid VARCHAR(32) NOT NULL,
  q_player VARCHAR(500),
  q_message TEXT,
  q_datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (q_id)
);

