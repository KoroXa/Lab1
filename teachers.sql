CREATE TABLE teachers (
	teacher_id SERIAL PRIMARY KEY,
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	middle_name VARCHAR(50),
	education VARCHAR(100),
	experience_years SMALLINT CHECK (experience_years >= 0),
	department_id INT,
	phone_number VARCHAR(20)
);