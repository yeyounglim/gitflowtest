-- CREATE DATABASE testdb;
-- CREATE USER 'testuser'@'%' IDENTIFIED BY 'testpwd';
GRANT ALL PRIVILEGES ON example.* TO 'root'@'%';
GRANT ALL PRIVILEGES ON example.* TO 'twuser'@'%';

CREATE TABLE tests (
                      ID BIGINT AUTO_INCREMENT PRIMARY KEY,
                      NAME VARCHAR(30)
);

INSERT INTO tests (NAME) VALUES ('테스트1');
INSERT INTO tests (NAME) VALUES ('테스트2');
