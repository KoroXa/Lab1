CREATE TABLE workload (
	teacher_id INT NOT NULL REFERENCES teachers(teacher_id) ON DELETE CASCADE,
	discipline_id INT NOT NULL,
	hourly_rate NUMERIC(10, 2) CHECK (hourly_rate >= 0), 
	hourly_payment NUMERIC (10, 2) CHECK (hourly_payment >= 0),
	is_hourly BOOLEAN DEFAULT TRUE,
	PRIMARY KEY (teacher_id, discipline_id)
)