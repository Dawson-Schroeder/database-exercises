USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE 'albums' (
    id INT NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(200) NOT NULL,
    release_date INT NOT NULL,
    genre VARCHAR(100) NOT NULL,
    sales DECIMAL(15, 2) NOT NULL,
    PRIMARY KEY (id)
);