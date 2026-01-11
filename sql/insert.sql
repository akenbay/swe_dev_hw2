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

INSERT INTO subjects (name) VALUES
('Physical Education'),
('Philosophy'),
('Mathematics'),
('Physics'),
('Databases');

INSERT INTO schedule (faculty_id, group_id, subject_id, class_time) VALUES
(2, 3, 1, '09:00–10:30'),
(2, 4, 2, '10:45–12:15'),
(1, 1, 3, '13:00–14:30'),
(1, 2, 4, '14:45–16:15'),
(3, 5, 5, '16:30–18:00');

INSERT INTO attendance (student_id, subject_id, visit_day, visited) VALUES
(1, 1, '2026-01-06', true),
(1, 3, '2026-01-07', true),
(2, 1, '2026-01-06', false),
(2, 4, '2026-01-08', true),
(3, 2, '2026-01-07', true),
(4, 2, '2026-01-07', true),
(5, 5, '2026-01-09', true);