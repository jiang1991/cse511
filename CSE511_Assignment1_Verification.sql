-- TEST CASE 1: Insert normal data
INSERT INTO users VALUES (85281, 'testName');
INSERT INTO movies VALUES (20030628, 'Pirates of the Caribbean: The Curse of the Black Pearl (2003)');
INSERT INTO taginfo VALUES (1234, 'pirates');
INSERT INTO genres VALUES (5678, 'adventure');
INSERT INTO ratings VALUES (85281, 20030628, 4.5, 1661228069);
INSERT INTO tags VALUES (85281, 20030628, 1234, 1661228069);
INSERT INTO hasagenre VALUES (20030628, 5678);

-- TEST CASE 2: Insert non-exist foreign key
INSERT INTO ratings VALUES (1, 1, 0, 1661228069);

-- TEST CASE 3: Insert duplicate rating
INSERT INTO ratings VALUES (85281, 20030628, 5, 1661228069);

-- TEST CASE 4: Insert a hasagenre record that contains wrong genre id
INSERT INTO hasagenre VALUES (20030628, 6789);

-- TEST CASE 5: Insert a rating larger than 5
INSERT INTO movies VALUES (20060624, 'Pirates of the Caribbean: Dead Man''s Chest (2006)');
INSERT INTO ratings VALUES (85281, 20060624, 6, 1661228069);
