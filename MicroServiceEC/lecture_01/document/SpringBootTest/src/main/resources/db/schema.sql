DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id int(11) NOT NULL,
  account varchar(50) DEFAULT NULL,
  passwordplaintext varchar(255),
  passwordencrypt varchar(255),
  name varchar(255),
  age int(11) DEFAULT NULL,
  address varchar(1000),
  telphone varchar(20),
  qq varchar(20),
  weixin varchar(20),
  email varchar(50),
  sex varchar(2),
  birthday varchar(20),
  PRIMARY KEY (id)
);
