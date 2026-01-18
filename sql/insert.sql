INSERT INTO roles (name) VALUES
('ADMIN'),
('TEACHER'),
('STUDENT');

INSERT INTO users (email, password_hash) VALUES
('admin@university.kz', 'hashed_admin_password'),
('teacher1@university.kz', 'hashed_teacher1_password'),
('teacher2@university.kz', 'hashed_teacher2_password'),
('anna@university.kz', 'hashed_anna_password'),
('maria@university.kz', 'hashed_maria_password'),
('alex@university.kz', 'hashed_alex_password'),
('elena@university.kz', 'hashed_elena_password'),
('ivan@university.kz', 'hashed_ivan_password');

INSERT INTO user_roles (user_id, role_id) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3);

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

INSERT INTO students (user_id, first_name, last_name, gender, birth_date, group_id) VALUES
(4, 'Anna', 'Ivanova', 'Female', '2003-05-12', 1),
(5, 'Maria', 'Petrova', 'Female', '2002-03-20', 2),
(6, 'Alex', 'Smirnov', 'Male', '2001-11-01', 3),
(7, 'Elena', 'Sidorova', 'Female', '2004-01-15', 4),
(8, 'Ivan', 'Kuznetsov', 'Male', '2002-07-08', 5);

INSERT INTO staff (user_id, first_name, last_name, faculty_id, position) VALUES
(1, 'System', 'Admin', NULL, 'Administrator'),
(2, 'John', 'Doe', 1, 'Lecturer'),
(3, 'Jane', 'Smith', 2, 'Senior Lecturer');

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