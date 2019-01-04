### Schema
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Pass@1234';

CREATE DATABASE pets_db;
USE pets_db;

CREATE TABLE quotes
(
	id int NOT NULL AUTO_INCREMENT,
	author varchar(255) NOT NULL,
	quote TEXT NOT NULL,
	PRIMARY KEY (id)
);

USE quotes_db;

INSERT INTO quotes (quote, author) VALUES ('Know your "why" in any of your endeavors. That will push you through any wall you hit.', 'Albert Bahia');

INSERT INTO quotes (quote, author) VALUES ('In any moment of decision, the best thing you can do is the right thing, the next best thing is the wrong thing, and the worst thing you can do is nothing.', "Theodore Roosevelt");

INSERT INTO quotes (quote, author) VALUES ('Never leave home without your cardigan.', "Owens O'Brien");

INSERT INTO quotes (quote, author) VALUES ('Give me fuel, Give me fire, Give me that which I desire, Ooh!', "Nate Tuvera");

INSERT INTO quotes (quote, author) VALUES ("TiK ToK, on the clock; But the party don't stop no; Whoa-oh oh oh; Whoa-oh oh oh; Don't stop, make it pop; DJ, blow my speakers up", "Michael Stearne");

INSERT INTO quotes (quote, author) VALUES ("They told him don't you ever come around here; Don't want to see your face, you better disappear; The fire's in their eyes and their words are really clear; So beat it, just beat it", "Dan Orrico");

INSERT INTO quotes (quote, author) VALUES ("Sup bro?", "Ruby Pradhan");

select * from quotes;