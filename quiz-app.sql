
CREATE USER quiz_app WITH LOGIN PASSWORD 'password@123';
CREATE DATABASE quiz_app OWNER quiz_app;

DROP TABLE IF EXISTS question;

CREATE TABLE question (
    id SERIAL PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    difficulty VARCHAR(255) NOT NULL,
    question TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    answer_id INTEGER REFERENCES answer(id) UNIQUE
);

CREATE TABLE answer (
    id SERIAL PRIMARY KEY,
    answer VARCHAR(255) NOT NULL,
    question_id INTEGER REFERENCES question(id) UNIQUE
);

{
    "quantity": "1",
    "category": "Science",
    "difficulty": "Easy"
}



-- Question 1
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('General Knowledge', 'Basic', 'What is the capital of France?', 'Paris', 'London', 'Berlin', 'Madrid')
RETURNING id INTO question1_id;

INSERT INTO answer (answer, question_id)
VALUES ('Paris', question1_id);

-- Question 2
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Science', 'Easy', 'What is the chemical symbol for water?', 'O2', 'CO2', 'H2O', 'N2')
RETURNING id INTO question2_id;

INSERT INTO answer (answer, question_id)
VALUES ('H2O', question2_id);

-- Question 3
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('History', 'Medium', 'In which year did World War II end?', '1945', '1918', '1939', '1941')
RETURNING id INTO question3_id;

INSERT INTO answer (answer, question_id)
VALUES ('1945', question3_id);

-- Question 4
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Technology', 'Hard', 'Who is the co-founder of Microsoft Corporation?', 'Bill Gates', 'Steve Jobs', 'Mark Zuckerberg', 'Larry Page')
RETURNING id INTO question4_id;

INSERT INTO answer (answer, question_id)
VALUES ('Bill Gates', question4_id);

-- Question 5
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Sports', 'Basic', 'Which sport is played in Wimbledon?', 'Tennis', 'Soccer', 'Golf', 'Cricket')
RETURNING id INTO question5_id;

INSERT INTO answer (answer, question_id)
VALUES ('Tennis', question5_id);

-- Question 6
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Geography', 'Easy', 'What is the largest continent on Earth?', 'North America', 'Africa', 'Asia', 'Europe')
RETURNING id INTO question6_id;

INSERT INTO answer (answer, question_id)
VALUES ('Asia', question6_id);

-- Question 7
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Literature', 'Medium', 'Who wrote the play "Romeo and Juliet"?', 'William Shakespeare', 'Jane Austen', 'Charles Dickens', 'Mark Twain')
RETURNING id INTO question7_id;

INSERT INTO answer (answer, question_id)
VALUES ('William Shakespeare', question7_id);

-- Question 8
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Mathematics', 'Hard', 'What is the value of π (pi) to two decimal places?', '3.14', '3.25', '3.50', '3.75')
RETURNING id INTO question8_id;

INSERT INTO answer (answer, question_id)
VALUES ('3.14', question8_id);

-- Question 9
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Music', 'Basic', 'Who is known as the "King of Pop"?', 'Madonna', 'Michael Jackson', 'Elvis Presley', 'Beyoncé')
RETURNING id INTO question9_id;

INSERT INTO answer (answer, question_id)
VALUES ('Michael Jackson', question9_id);

-- Question 10
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Science', 'Easy', 'What is the chemical symbol for gold?', 'Au', 'Ag', 'Fe', 'Cu')
RETURNING id INTO question10_id;

INSERT INTO answer (answer, question_id)
VALUES ('Au', question10_id);



-- Questions
INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('General Knowledge', 'Basic', 'What is the capital of France?', 'Paris', 'London', 'Berlin', 'Madrid');

INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Science', 'Easy', 'What is the chemical symbol for water?', 'O2', 'CO2', 'H2O', 'N2');

INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('History', 'Medium', 'In which year did World War II end?', '1945', '1918', '1939', '1941');

INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Technology', 'Hard', 'Who is the co-founder of Microsoft Corporation?', 'Bill Gates', 'Steve Jobs', 'Mark Zuckerberg', 'Larry Page');

INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Sports', 'Basic', 'Which sport is played in Wimbledon?', 'Tennis', 'Soccer', 'Golf', 'Cricket');

INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Geography', 'Easy', 'What is the largest continent on Earth?', 'North America', 'Africa', 'Asia', 'Europe');

INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Literature', 'Medium', 'Who wrote the play "Romeo and Juliet"?', 'William Shakespeare', 'Jane Austen', 'Charles Dickens', 'Mark Twain');

INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Mathematics', 'Hard', 'What is the value of π (pi) to two decimal places?', '3.14', '3.25', '3.50', '3.75');

INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Music', 'Basic', 'Who is known as the "King of Pop"?', 'Madonna', 'Michael Jackson', 'Elvis Presley', 'Beyoncé');

INSERT INTO question (category, difficulty, question, option_a, option_b, option_c, option_d)
VALUES ('Science', 'Easy', 'What is the chemical symbol for gold?', 'Au', 'Ag', 'Fe', 'Cu');

-- Answers
INSERT INTO answer (answer, question_id) VALUES ('Paris', 1);
INSERT INTO answer (answer, question_id) VALUES ('H2O', 2);
INSERT INTO answer (answer, question_id) VALUES ('1945', 3);
INSERT INTO answer (answer, question_id) VALUES ('Bill Gates', 4);
INSERT INTO answer (answer, question_id) VALUES ('Tennis', 5);
INSERT INTO answer (answer, question_id) VALUES ('Asia', 6);
INSERT INTO answer (answer, question_id) VALUES ('William Shakespeare', 7);
INSERT INTO answer (answer, question_id) VALUES ('3.14', 8);
INSERT INTO answer (answer, question_id) VALUES ('Michael Jackson', 9);
INSERT INTO answer (answer, question_id) VALUES ('Au', 10);
