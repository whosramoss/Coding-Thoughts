CREATE DATABASE u99_dados
default character set utf8 
default collate	utf_general_ci;
CREATE TABLE myusers(
    id INT NOT NULL AUTO_INCREMENT,
    user varchar(50),
    email varchar(100),
    pass varchar(50),
    status tinyint,
    primary key(id)
);