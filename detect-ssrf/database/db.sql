CREATE DATABASE IF NOT EXISTS myDB;

use myDB;

DROP TABLE IF EXISTS `Posts`;

CREATE TABLE `Posts`(
    `id` INT NOT NULL PRIMARY KEY,
    `title` TEXT NOT NULL,
    `content` TEXT NOT NULL, 
    `author` VARCHAR(50) NOT NULL
);

INSERT INTO Posts(id,title, content, author) VALUES(1, 'SSRF TUTORIAL', 'SERVER-SIDE REQUEST FORGERY (SSRF)', 'admin');

INSERT INTO Posts(id,title, content, author) VALUES(2, 'XSS TUTORIAL', 'Cross-Site Scripting (XSS)', 'admin');

INSERT INTO Posts(id,title, content, author) VALUES(3, 'RECON TUTORIAL', 'Reconnaissance', 'admin');


DROP TABLE IF EXISTS `Flag`;

CREATE TABLE `Flag` (
    `secret` TEXT NOT NULL 
);

INSERT INTO Flag(secret) VALUES('Flag3:VCS{DETECT_SSRF}');
