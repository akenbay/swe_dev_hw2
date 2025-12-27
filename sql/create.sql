CREATE TABLE faculties (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE groups (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    faculty_id INT REFERENCES faculties(id)
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    birth_date DATE,
    group_id INT REFERENCES groups(id)
);

CREATE TABLE schedule (
    id SERIAL PRIMARY KEY,
    faculty_id INT REFERENCES faculties(id),
    group_id INT REFERENCES groups(id),
    subject VARCHAR(100),
    class_time VARCHAR(50)
);