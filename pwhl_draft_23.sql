CREATE DATABASE pro_hockey;

CREATE TABLE pwhl_draft_23 (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    birth_year YEAR,
    nationality VARCHAR(50) NOT NULL,
    state_prov VARCHAR(50) NOT NULL,
    pro_team VARCHAR(50) NOT NULL,
    ncaa_team VARCHAR(50) NOT NULL,
    ncaa_conference VARCHAR(50) NOT NULL,
    draft_round INT
);

ALTER TABLE pwhl_draft_23
CHANGE birth_year 
birth_year YEAR;

INSERT INTO pwhl_draft_23 (last_name, first_name, birth_year, nationality, state_prov, pro_team, ncaa_team, ncaa_conference, draft_round)
VALUES
('Heise', 'Taylor', 2000, 'USA', 'Minnesota', 'Minnesota', 'University of Minnesota', 'WCHA', 1);

INSERT INTO pwhl_draft_23 (last_name, first_name, birth_year, nationality, state_prov, pro_team, ncaa_team, ncaa_conference, draft_round, position)
VALUES
('Nurse', 'Sarah', 1995, 'Canada', 'Ontario', 'Toronto', 'University of Wisconsin', 'WCHA', 1, 'F'),
('Turnbull', 'Blayre', 1993, 'Canada', 'Nova Scotia', 'Toronto', 'University of Wisconsin', 'WCHA', 1, 'F'),
('Fast', 'Renata', 1994, 'Canada', 'Ontario', 'Toronto', 'Clarkson University', 'ECAC', 1, 'D'),
('Jenner', 'Brianne', 1991, 'Canada', 'Ontario', 'Ottawa', 'Cornel University', 'WCHA', 1, 'F'),
('Clark', 'Emily', 1995, 'Canada', 'Saskatchewan', 'Ottawa', 'University of Wisconsin', 'WCHA', 1, 'F'),
('Maschmeyer', 'Emerance', 1994, 'Canada', 'Alberta', 'Ottawa', 'Harvard University', 'ECAC', 1, 'G'),
('Poulin', 'Marie-Phillip', 1991, 'Canada', 'Quebec', 'Montreal', 'Boston University', 'ECAC', 1, 'F'),
('Stacey', 'Laura', 1994, 'Canada', 'Alberta', 'Ottawa', 'Harvard University', 'ECAC', 1, 'F'),
('Desbiens', 'Ann-Renee', 1994, 'Canada', 'Quebec', 'Montreal', 'University of Wisconsin', 'WCHA', 1, 'G'),
('Knight', 'Hilary', 1989, 'USA', 'California', 'Boston', 'University of Wisconsin', 'WCHA', 1, 'F'),
('Keller', 'Megan', 1996, 'USA', 'Michigan', 'Boston', 'Boston College', 'Hockey East', 1, 'D'),
('Frankel', 'Aerin', 1999, 'USA', 'New York', 'Boston', 'Northeastern University', 'Hockey East', 1, 'G'),
('Roque', 'Abby', 1997, 'USA', 'Michigan', 'New York', 'University of Wisconsin', 'WCHA', 1, 'F'),
('Carpenter', 'Alex', 1994, 'USA', 'Massachusetts', 'New York', 'Boston College', 'Hockey East', 1, 'F'),
('Zandee-Hart', 'Micah', 1997, 'Canada', 'British Columbia', 'New York', 'Cornel University', 'ECAC', 1, 'D'),
('Coyne-Schofield', 'Kendall', 1992, 'USA', 'Illinois', 'Minnesota', 'Northeastern University', 'Hockey East', 1, 'F'),
('Pannek', 'Kelly', 1995, 'USA', 'Minnesota', 'Minnesota', 'University of Minnesota', 'WCHA', 1, 'F'),
('Stecklein', 'Lee', 1994, 'USA', 'Minnesota', 'Minnesota', 'University of Minnesota', 'WCHA', 1, 'D'),
('Larocque', 'Jocelyne', 1988, 'Canada', 'Manitoba', 'Toronto', 'University of Minnesota Duluth', 'WCHA', 1, 'D'),
('Müller', 'Alina', 1998, 'SUI', 'Lengnau', 'Boston', 'Northeastern University', 'Hockey East', 1, 'F'),
('Shelton', 'Ella', 1998, 'Canada', 'Ontario', 'New York', 'Clarkson University', 'ECAC', 1, 'D'),
('Harmon', 'Savannah', 1995, 'USA', 'Illinois', 'Ottawa', 'Clarkson University', 'ECAC', 1, 'D'),
('Ambrose', 'Erin', 1994, 'Canada', 'Ontario', 'Montreal', 'Clarkson University', 'ECAC', 1, 'D');


SELECT * FROM pwhl_draft_23;

ALTER TABLE pwhl_draft_23
ADD COLUMN position VARCHAR(5); 

SELECT ncaa_conference, COUNT(*)
FROM pwhl_draft_23
GROUP BY ncaa_conference;


