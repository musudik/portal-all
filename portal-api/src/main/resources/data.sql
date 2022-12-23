insert into program (program_id, program_name, description, created_by, created_date)
values (101, 'Weight Loss Program', 'Weight loss programs that offer counseling and education', 'system', '2022-12-02 12:00:00');
insert into program (program_id, program_name, description, created_by, created_date)
values (102, 'Ergonomic Program', 'Ergonomic assessments and equipment', 'system', '2022-12-02 12:00:00');
insert into program (program_id, program_name, description, created_by, created_date)
values (103, 'Health Wealth Program', 'Health and Wealth care for individuals', 'system', '2022-12-02 12:00:00');
insert into program (program_id, program_name, description, created_by, created_date)
values (104, 'eaps', 'Employee Assistance Programs', 'system', '2022-12-02 12:00:00');
insert into program (program_id, program_name, description, created_by, created_date)
values (105, 'Self Management Program', 'Chronic disease self-management tools', 'system', '2022-12-02 12:00:00');
insert into program (program_id, program_name, description, created_by, created_date)
values (106, 'Anti Depression', 'Anti Depression Program', 'system', '2022-12-02 12:00:00');
insert into program (program_id, program_name, description, created_by, created_date)
values (107, 'Family Care', 'Customized health care program for entire family', 'system', '2022-12-02 12:00:00');

insert into questionnaire (questionnaire_id, question, answer, created_by, created_date)
values (1, 'How often can we take an doctor appointment in a week?', '2 times maximum', 'system', '2022-12-02 12:00:00');
insert into questionnaire (questionnaire_id, question, answer, created_by, created_date)
values (2, 'What all health insurences are covered in your hospital?', 'we are covered with all public and private insurences', 'system', '2022-12-02 12:00:00');
insert into questionnaire (questionnaire_id, question, answer, created_by, created_date)
values (3, 'Will you cover the physio theraphy in your health care center', 'yes, we cover the physio theraphy', 'system', '2022-12-02 12:00:00');
insert into questionnaire (questionnaire_id, question, answer, created_by, created_date)
values (4, 'Do you have cardiology specialist in your health care center?', 'yes, we have cardiology specialist dr. sam', 'system', '2022-12-02 12:00:00');
insert into questionnaire (questionnaire_id, question, answer, created_by, created_date)
values (5, 'What are the working hours?', 'all days from 8am to 6pm', 'system', '2022-12-02 12:00:00');

insert into reward (reward_id, reward_name, description, created_by, created_date)
values (1001, 'Best Newbie', 'best new joinee of the fitness program', 'system', '2022-12-02 12:00:00');
insert into reward (reward_id, reward_name, description, created_by, created_date)
values (1002, 'Shooting Star', 'best customer of the month', 'system', '2022-12-02 12:00:00');
insert into reward (reward_id, reward_name, description, created_by, created_date)
values (1003, 'Quick Five', 'fastest to subscribe 5 programs', 'system', '2022-12-02 12:00:00');
insert into reward (reward_id, reward_name, description, created_by, created_date)
values (1004, 'Grand Master', 'grand master of all subscriptions', 'system', '2022-12-02 12:00:00');


insert into question (question_id, question, category, question_level, created_by, created_date)
values (1, 'Is the program?', 'general', 0, 'system', '2022-12-02 12:00:00');
insert into question (question_id, question, category, question_level, created_by, created_date)
values (2, 'Select your sex', 'general', 0, 'system', '2022-12-02 12:00:00');
insert into question (question_id, question, category, question_level, created_by, created_date)
values (3, 'Enter the age', 'general', 0, 'system', '2022-12-02 12:00:00');
insert into question (question_id, question, category, question_level, created_by, created_date)
values (4, 'Which program are you looking for?', 'general', 0, 'system', '2022-12-02 12:00:00'); --physical or mental
insert into question (question_id, question, category, question_level, created_by, created_date)
values (5, 'Which part of your body is having an issue?', 'physical', 1, 'system', '2022-12-02 12:00:00'); --head or chest or abdomen or legs
insert into question (question_id, question, category, question_level, created_by, created_date)
values (6, 'Do you have any of the following symptoms?', 'head', 2, 'system', '2022-12-02 12:00:00'); --headache or face pain or sinus pain or pressure or fever --swollen face -facial muscle weakness
insert into question (question_id, question, category, question_level, created_by, created_date)
values (7, 'Do you have any of the following symptoms?', 'chest', 2, 'system', '2022-12-02 12:00:00'); --chest painchest pain, spreading to the left upper limbpressing chest painheartburnpalpitationsfast heart rate
insert into question (question_id, question, category, question_level, created_by, created_date)
values (8, 'do you have any of the following symptoms?', 'abdomen', 2, 'system', '2022-12-02 12:00:00'); --stomach pain or burning or crampy stomach pain
insert into question (question_id, question, category, question_level, created_by, created_date)
values (9, 'Do you have any of the following symptoms?', 'legs', 2, 'system', '2022-12-02 12:00:00'); --knee pain or ankle or feet pain or flat foot
insert into question (question_id, question, category, question_level, created_by, created_date)
values (10, 'Do you have mental stress due to', 'mental', 1, 'system', '2022-12-02 12:00:00'); -- depression or anxiety  or office tension or relationship or other reasons
insert into question (question_id, question, category, question_level, created_by, created_date)
values (11, 'Thoughts that you would be better off dead, or of hurting yourself', 'depression', 2, 'system', '2022-12-02 12:00:00'); --not at all or several days or more than half the days or nearly every day
insert into question (question_id, question, category, question_level, created_by, created_date)
values (12, 'Trouble concentrating on things, such as reading the newspaper or watching television', 'depression', 3, 'system', '2022-12-02 12:00:00'); --not at all or several days or more than half the days or nearly every day
insert into question (question_id, question, category, question_level, created_by, created_date)
values (13, 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down', 'depression', 4, 'system', '2022-12-02 12:00:00'); --not at all or several days or more than half the days or nearly every day
insert into question (question_id, question, category, question_level, created_by, created_date)
values (14, 'Not being able to stop or control worrying', 'anxiety', 2, 'system', '2022-12-02 12:00:00'); --not at all or several days or more than half the days or nearly every day
insert into question (question_id, question, category, question_level, created_by, created_date)
values (15, 'Becoming easily annoyed or irritable', 'anxiety', 3, 'system', '2022-12-02 12:00:00'); --not at all or several days or more than half the days or nearly every day
insert into question (question_id, question, category, question_level, created_by, created_date)
values (16, 'Feeling afraid, as if something awful might happen', 'anxiety', 4, 'system', '2022-12-02 12:00:00'); --not at all or several days or more than half the days or nearly every day

insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (1,'For you', 1, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (2,'For someone else', 1, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (3,'Male', 2, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (4,'Female', 2, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (5,'Physical', 4, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (6,'Mental', 4, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (7,'Head', 5, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (8,'Chest', 5, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (9,'Abdomen', 5, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (10,'Legs', 5, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (11,'Headache', 6, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (12,'Face pain', 6, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (13,'Sinus pain', 6, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (14,'Facial muscle weakness', 6, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (15,'Chest pain', 7, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (16,'Heartburn', 7, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (17,'Palpitations', 7, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (18,'Fast heart rate', 7, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (19,'Chest pain', 7, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (20,'Heartburn', 7, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (21,'Palpitations', 7, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (22,'Fast heart rate', 7, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (23,'Stomach pain', 8, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (24,'Burning', 8, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (25,'crampy stomach pain', 8, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (26,'Knee pain', 9, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (27,'Ankle', 9, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (28,'Feet pain', 9, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (29,'Flat foot', 9, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (30,'Depression', 10, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (31,'Anxiety', 10, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (32,'Office tension', 10, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (33,'Relationship', 10, null, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (34,'Other issues', 10, null, 'system', '2022-12-02 12:00:00');

insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (35,'Not at all', 11, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (36,'Several days', 11, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (37,'More than half the days', 11, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (38,'Nearly every day', 11, 106, 'system', '2022-12-02 12:00:00');

insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (39,'Not at all', 12, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (41,'Several days', 12, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (42,'More than half the days', 12, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (43,'Nearly every day', 12, 106, 'system', '2022-12-02 12:00:00');

insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (44,'Not at all', 13, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (45,'Several days', 13, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (46,'More than half the days', 13, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (47,'Nearly every day', 13, 106, 'system', '2022-12-02 12:00:00');

insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (48,'Not at all', 14, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (49,'Several days', 14, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (50,'More than half the days', 14, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (51,'Nearly every day', 14, 106, 'system', '2022-12-02 12:00:00');

insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (52,'Not at all', 15, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (53,'Several days', 15, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (54,'More than half the days', 15, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (55,'Nearly every day', 15, 106, 'system', '2022-12-02 12:00:00');

insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (56,'Not at all', 16, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (57,'Several days', 16, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (58,'More than half the days', 16, 106, 'system', '2022-12-02 12:00:00');
insert into answer (answer_id, answer, question_id, program_id, created_by, created_date)
values (59,'Nearly every day', 16, 106, 'system', '2022-12-02 12:00:00');

commit;
