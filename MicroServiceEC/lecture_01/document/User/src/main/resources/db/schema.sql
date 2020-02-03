DROP TABLE IF EXISTS youfansd_user;
CREATE TABLE youfansd_user (
  id int(11) NOT NULL,
  account varchar(50) DEFAULT NULL,
  passwordplaintext varchar(255) DEFAULT NULL,
  passwordencrypt varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  age int(11) DEFAULT NULL,
  address varchar(1000) DEFAULT NULL,
  telphone varchar(20) DEFAULT NULL,
  qq varchar(20) DEFAULT NULL,
  weixin varchar(20) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  sex varchar(2) DEFAULT NULL,
  birthday varchar(20) DEFAULT NULL,
  PRIMARY KEY (id)
);
