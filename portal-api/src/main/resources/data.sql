INSERT INTO program (program_id, program_name, description, created_by, created_date)
VALUES (101, 'Weight Loss Program', 'Weight loss programs that offer counseling and education', 'System', '2022-12-02 12:00:00');
INSERT INTO program (program_id, program_name, description, created_by, created_date)
VALUES (102, 'Ergonomic Program', 'Ergonomic assessments and equipment', 'System', '2022-12-02 12:00:00');
INSERT INTO program (program_id, program_name, description, created_by, created_date)
VALUES (103, 'Vaccination Program', 'On-site influenza vaccines for all ages', 'System', '2022-12-02 12:00:00');
INSERT INTO program (program_id, program_name, description, created_by, created_date)
VALUES (104, 'EAPs', 'Employee Assistance Programs', 'System', '2022-12-02 12:00:00');
INSERT INTO program (program_id, program_name, description, created_by, created_date)
VALUES (105, 'Self Management Program', 'Chronic disease self-management tools', 'System', '2022-12-02 12:00:00');
INSERT INTO program (program_id, program_name, description, created_by, created_date)
VALUES (106, 'Health Seminars', 'Seminars on health topics such as fitness, nutrition, tobacco cessation, or stress management', 'System', '2022-12-02 12:00:00');
INSERT INTO program (program_id, program_name, description, created_by, created_date)
VALUES (107, 'Family Care', 'Customized health care program for entire family', 'System', '2022-12-02 12:00:00');

INSERT INTO questionnaire (questionnaire_id, question, answer, created_by, created_date)
VALUES (1, 'How often can we take an doctor appointment in a week?', '2 times maximum', 'System', '2022-12-02 12:00:00');
INSERT INTO questionnaire (questionnaire_id, question, answer, created_by, created_date)
VALUES (2, 'What all health insurences are covered in your hospital?', 'We are covered with all public and private insurences', 'System', '2022-12-02 12:00:00');
INSERT INTO questionnaire (questionnaire_id, question, answer, created_by, created_date)
VALUES (3, 'Will you cover the physio theraphy in your health care center', 'Yes, we cover the physio theraphy', 'System', '2022-12-02 12:00:00');
INSERT INTO questionnaire (questionnaire_id, question, answer, created_by, created_date)
VALUES (4, 'Do you have cardiology specialist in your health care center?', 'Yes, we have cardiology specialist Dr. Sam', 'System', '2022-12-02 12:00:00');
INSERT INTO questionnaire (questionnaire_id, question, answer, created_by, created_date)
VALUES (5, 'What are the working hours?', 'All days from 8AM to 6PM', 'System', '2022-12-02 12:00:00');

INSERT INTO reward (reward_id, reward_name, description, created_by, created_date)
VALUES (1001, 'Star Of the Month', 'Best customer of the month', 'System', '2022-12-02 12:00:00');
INSERT INTO reward (reward_id, reward_name, description, created_by, created_date)
VALUES (1002, 'Best Newbie', 'Best New Joinee of the fitness program', 'System', '2022-12-02 12:00:00');
INSERT INTO reward (reward_id, reward_name, description, created_by, created_date)
VALUES (1003, 'Star Family', 'Best Family of the month in family program', 'System', '2022-12-02 12:00:00');
INSERT INTO reward (reward_id, reward_name, description, created_by, created_date)
VALUES (1004, 'Quick 5', 'Fastest to subscribe 5 programs', 'System', '2022-12-02 12:00:00');
commit;