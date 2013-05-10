PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE news (id integer auto increment primary key,title varchar(100),content text, visible integer);
INSERT INTO "news" VALUES(1,'Neue Version, jetzt in GO!','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',1);
INSERT INTO "news" VALUES(2,'Lorem.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',1);
CREATE TABLE users (id integer,name varchar(50),password varchar(100));
INSERT INTO "users" VALUES(1,'wolfgang','4d75e8db6a4b6205d0a95854d634c27a');
INSERT INTO "users" VALUES(2,'henrik','18ac1706f086ae2980a84e9e3217d670');
COMMIT;
