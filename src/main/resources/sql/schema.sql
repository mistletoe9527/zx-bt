CREATE TABLE IF NOT EXISTS info_hash (
  id      BIGINT AUTO_INCREMENT COMMENT 'id',
  info_hash CHAR(40) NOT NULL COMMENT 'info_hash',
  type TINYINT NOT NULL COMMENT '类型: 0:get_peers; 1:announce_peer;',
  peer_address VARCHAR(4096) DEFAULT '' COMMENT 'peer地址, ip:port形式',
  create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time TIMESTAMP  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (id)
)AUTO_INCREMENT = 1000,COMMENT = 'info_hash';

CREATE TABLE IF NOT EXISTS  node (
  id      BIGINT AUTO_INCREMENT COMMENT 'id',
  node_id CHAR(40) DEFAULT '' COMMENT 'node_id',
  ip VARCHAR(32) DEFAULT '' COMMENT 'ip',
  port INT DEFAULT 0 COMMENT 'port',
  create_time TIMESTAMP  DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time TIMESTAMP  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (id)
)AUTO_INCREMENT = 1000,COMMENT = 'node';


