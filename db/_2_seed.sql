INSERT INTO "user" ("id", "name_first", "name_last", "email_personal", "email_professional") VALUES
(1, 'John', 'Doe', 'johndoe@example.com', 'johndoe@school1.org'),
(2, 'Jane', 'Smith', 'janesmith@example.com', 'janesmith@school2.org'),
(3, 'Michael', 'Johnson', 'michaeljohnson@example.com', 'michaeljohnson@school3.org'),
(4, 'Emily', 'Brown', 'emilybrown@example.com', 'emilybrown@school4.org'),
(5, 'William', 'Davis', 'williamdavis@example.com', 'williamdavis@school5.org'),
(6, 'Sarah', 'Wilson', 'sarahwilson@example.com', 'sarahwilson@school6.org'),
(7, 'James', 'Taylor', 'jamestaylor@example.com', 'jamestaylor@school7.org'),
(8, 'Emma', 'Martinez', 'emmamartinez@example.com', 'emmamartinez@school8.org'),
(9, 'Olivia', 'Anderson', 'oliviaanderson@example.com', 'oliviaanderson@school9.org'),
(10, 'Benjamin', 'Hernandez', 'benjaminhernandez@example.com', 'benjaminhernandez@school10.org'),
(11, 'Ethan', 'Lopez', 'ethanlopez@example.com', 'ethanlopez@school11.org'),
(12, 'Daniel', 'Gonzalez', 'danielgonzalez@example.com', 'danielgonzalez@school12.org'),
(13, 'Alexander', 'Wilson', 'alexanderwilson@example.com', 'alexanderwilson@school13.org'),
(14, 'Sophia', 'Scott', 'sophiascott@example.com', 'sophiascott@school14.org'),
(15, 'Mia', 'Green', 'miagreen@example.com', 'miagreen@school15.org'),
(16, 'Charlotte', 'Adams', 'charlotteadams@example.com', 'charlotteadams@school16.org'),
(17, 'Amelia', 'Baker', 'ameliabaker@example.com', 'ameliabaker@school17.org'),
(18, 'Harper', 'Garcia', 'harpergarcia@example.com', 'harpergarcia@school18.org'),
(19, 'Evelyn', 'Perez', 'evelynperez@example.com', 'evelynperez@school19.org'),
(20, 'Liam', 'Campbell', 'liamcampbell@example.com', 'liamcampbell@school20.org'),
(21, 'Aiden', 'Evans', 'aidenevans@example.com', 'aidenevans@school21.org'),
(22, 'Lucas', 'Phillips', 'lucasphillips@example.com', 'lucasphillips@school22.org'),
(23, 'Noah', 'Reed', 'noahreed@example.com', 'noahreed@school23.org'),
(24, 'Mason', 'Bailey', 'masonbailey@example.com', 'masonbailey@school24.org'),
(25, 'Logan', 'Cooper', 'logancooper@example.com', 'logancooper@school25.org');

INSERT INTO "event" ("id", "event_name", "start_date", "end_date") VALUES
(1, 'Effective Classroom Management Workshop', '2024-03-01', '2024-03-15'),
(2, 'STEM Education Symposium', '2024-03-05', '2024-03-19'),
(3, 'Literacy Development Conference', '2024-03-08', '2024-03-22'),
(4, 'Teaching Strategies for Diverse Learners Seminar', '2024-03-12', '2024-03-26'),
(5, 'Technology Integration Bootcamp', '2024-03-15', '2024-03-29'),
(6, 'Arts Integration Workshop', '2024-03-19', '2024-04-02'),
(7, 'Special Education Training Program', '2024-03-22', '2024-04-05'),
(8, 'English Language Learners Workshop', '2024-03-26', '2024-04-09'),
(9, 'Mathematics Curriculum Development Institute', '2024-03-29', '2024-04-12'),
(10, 'Science Education Conference', '2024-04-02', '2024-04-16'),
(11, 'Physical Education Techniques Seminar', '2024-04-05', '2024-04-19'),
(12, 'Educational Leadership Summit', '2024-04-09', '2024-04-23'),
(13, 'Civics and Government Education Symposium', '2024-04-12', '2024-04-26'),
(14, 'Music Education Workshop', '2024-04-16', '2024-04-30'),
(15, 'Advanced Placement Strategies Institute', '2024-04-19', '2024-05-03'),
(16, 'Drama and Theater Arts Instruction Seminar', '2024-04-23', '2024-05-07'),
(17, 'Character Education Implementation Workshop', '2024-04-26', '2024-05-10'),
(18, 'Inquiry-Based Learning Conference', '2024-04-30', '2024-05-14'),
(19, 'Artificial Intelligence in Education Summit', '2024-05-03', '2024-05-17'),
(20, 'Early Childhood Education Symposium', '2024-05-07', '2024-05-21');

INSERT INTO "class" ("id", "school", "grade_level", "course_name", "n_students") VALUES
(1, 'Maple Elementary School', '7th Grade', 'Mathematics', 25),
(2, 'Oakridge High School', '10th Grade', 'Physics', 30),
(3, 'Willow Middle School', '8th Grade', 'English Literature', 28),
(4, 'Cedar Ridge High School', '11th Grade', 'History', 32),
(5, 'Pineview High School', '9th Grade', 'Biology', 29),
(6, 'Elmwood High School', '12th Grade', 'Computer Science', 27),
(7, 'Sycamore Middle School', '6th Grade', 'Art', 26),
(8, 'Birchwood High School', '11th Grade', 'Physical Education', 31),
(9, 'Sunset Elementary School', '9th Grade', 'Music Theory', 24),
(10, 'Riverdale Public School', 'Special Education', 'Behavioral Management', 15),
(11, 'Greenwood Academy', 'ELL Program', 'Language Support', 20),
(12, 'Brookside High School', '10th Grade', 'Health Education', 28),
(13, 'Springfield High School', '11th Grade', 'Environmental Science', 29),
(14, 'Forest Park Middle School', '8th Grade', 'Advanced Mathematics', 27),
(15, 'Meadowbrook High School', '12th Grade', 'AP Exam Preparation', 30),
(16, 'Hillcrest Junior High', '7th Grade', 'Drama', 25),
(17, 'Lakeview High School', '11th Grade', 'Educational Technology', 28),
(18, 'Fairview Elementary School', 'Early Childhood', 'Developmental Play', 20),
(19, 'Mountain Valley High School', '9th Grade', 'Adolescent Psychology', 26),
(20, 'Valleybrook High School', '12th Grade', 'Civics', 30);

-- Enrollment data for event 1
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(1, 1, 'facilitator'),
(1, 2, 'participant'),
(1, 3, 'participant'),
(1, 4, 'participant'),
(1, 5, 'participant');

-- Enrollment data for event 2
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(2, 6, 'administrator'),
(2, 7, 'participant'),
(2, 8, 'participant'),
(2, 9, 'participant'),
(2, 10, 'observer'),
(2, 11, 'participant');

-- Enrollment data for event 3
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(3, 12, 'participant'),
(3, 13, 'participant'),
(3, 14, 'participant'),
(3, 15, 'participant'),
(3, 16, 'participant'),
(3, 17, 'participant'),
(3, 18, 'participant');

-- Enrollment data for event 4
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(4, 19, 'facilitator'),
(4, 20, 'participant'),
(4, 21, 'participant'),
(4, 22, 'participant'),
(4, 23, 'participant'),
(4, 24, 'participant'),
(4, 25, 'participant');

-- Enrollment data for event 5
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(5, 1, 'participant'),
(5, 2, 'participant'),
(5, 3, 'participant'),
(5, 4, 'participant'),
(5, 5, 'facilitator');

-- Enrollment data for event 6
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(6, 6, 'participant'),
(6, 7, 'participant'),
(6, 8, 'participant'),
(6, 9, 'participant'),
(6, 10, 'facilitator');

-- Enrollment data for event 7
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(7, 11, 'participant'),
(7, 12, 'participant'),
(7, 13, 'facilitator'),
(7, 14, 'participant'),
(7, 15, 'participant');

-- Enrollment data for event 8
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(8, 16, 'participant'),
(8, 17, 'participant'),
(8, 18, 'participant'),
(8, 19, 'participant'),
(8, 20, 'participant');

-- Enrollment data for event 9
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(9, 21, 'participant'),
(9, 22, 'participant'),
(9, 23, 'participant'),
(9, 24, 'facilitator'),
(9, 25, 'participant');

-- Enrollment data for event 10
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(10, 1, 'participant'),
(10, 2, 'participant'),
(10, 3, 'participant'),
(10, 4, 'participant'),
(10, 5, 'participant'),
(10, 6, 'facilitator');

-- Enrollment data for event 11
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(11, 7, 'participant'),
(11, 8, 'participant'),
(11, 9, 'participant'),
(11, 10, 'facilitator'),
(11, 11, 'participant'),
(11, 12, 'participant');

-- Enrollment data for event 12
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(12, 13, 'participant'),
(12, 14, 'participant'),
(12, 15, 'facilitator'),
(12, 16, 'participant'),
(12, 17, 'participant'),
(12, 18, 'participant');

-- Enrollment data for event 13
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(13, 19, 'participant'),
(13, 20, 'participant'),
(13, 21, 'facilitator'),
(13, 22, 'participant'),
(13, 23, 'participant'),
(13, 24, 'participant');

-- Enrollment data for event 14
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(14, 25, 'participant'),
(14, 1, 'participant'),
(14, 2, 'facilitator'),
(14, 3, 'participant'),
(14, 4, 'participant'),
(14, 5, 'participant');

-- Enrollment data for event 15
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(15, 6, 'participant'),
(15, 7, 'participant'),
(15, 8, 'facilitator'),
(15, 9, 'participant'),
(15, 10, 'participant'),
(15, 11, 'participant');

-- Enrollment data for event 16
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(16, 12, 'participant'),
(16, 13, 'participant'),
(16, 14, 'participant'),
(16, 15, 'facilitator'),
(16, 16, 'participant'),
(16, 17, 'participant');

-- Enrollment data for event 17
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(17, 18, 'participant'),
(17, 19, 'participant'),
(17, 20, 'facilitator'),
(17, 21, 'participant'),
(17, 22, 'participant'),
(17, 23, 'participant');

-- Enrollment data for event 18
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(18, 24, 'participant'),
(18, 25, 'participant'),
(18, 1, 'participant'),
(18, 2, 'facilitator'),
(18, 3, 'participant'),
(18, 4, 'participant');

-- Enrollment data for event 19
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(19, 5, 'participant'),
(19, 6, 'participant'),
(19, 7, 'participant'),
(19, 8, 'facilitator'),
(19, 9, 'participant'),
(19, 10, 'participant');

-- Enrollment data for event 20
INSERT INTO "enrollment" ("event_id", "user_id", "role") VALUES
(20, 11, 'participant'),
(20, 12, 'participant'),
(20, 13, 'participant'),
(20, 14, 'facilitator'),
(20, 15, 'participant'),
(20, 16, 'participant');