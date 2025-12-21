CREATE TABLE faculties (
    faculty_id SERIAL PRIMARY KEY,
    faculty_name VARCHAR(50) NOT NULL
);

CREATE TABLE groups (
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(20) NOT NULL,
    faculty_id INT REFERENCES faculties(faculty_id)
);

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    birth_date DATE,
    group_id INT REFERENCES groups(group_id)
);

CREATE TABLE schedule (
    schedule_id SERIAL PRIMARY KEY,
    faculty_id INT REFERENCES faculties(faculty_id),
    group_id INT REFERENCES groups(group_id),
    subject VARCHAR(100),
    class_time VARCHAR(50)
);