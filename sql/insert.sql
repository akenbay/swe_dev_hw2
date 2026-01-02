INSERT INTO faculties (name) VALUES
('Engineering'),
('Humanities'),
('IT'),
('Economics'),
('Law');

INSERT INTO groups (name, faculty_id) VALUES
('ENG-101', 1),
('ENG-102', 1),
('HUM-201', 2),
('HUM-202', 2),
('IT-301', 3);

INSERT INTO students (first_name, last_name, gender, birth_date, group_id) VALUES
('Anna', 'Ivanova', 'Female', '2003-05-12', 1),
('Maria', 'Petrova', 'Female', '2002-03-20', 2),
('Alex', 'Smirnov', 'Male', '2001-11-01', 3),
('Elena', 'Sidorova', 'Female', '2004-01-15', 4),
('Ivan', 'Kuznetsov', 'Male', '2002-07-08', 5);

INSERT INTO schedule (faculty_id, group_id, subject, class_time) VALUES
(2, 3, 'Physical Education', '09:00–10:30'),
(2, 4, 'Philosophy', '10:45–12:15'),
(1, 1, 'Mathematics', '13:00–14:30'),
(1, 2, 'Physics', '14:45–16:15'),
(3, 5, 'Databases', '16:30–18:00');