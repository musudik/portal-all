CREATE TABLE 'program' (
  'program_id' bigint NOT NULL,
  'created_by' varchar(255) DEFAULT NULL,
  'created_date' datetime(6) DEFAULT NULL,
  'updated_by' varchar(255) DEFAULT NULL,
  'updated_date' datetime(6) DEFAULT NULL,
  'description' varchar(255) NOT NULL,
  'program_name' varchar(255) NOT NULL,
  'program' bigint DEFAULT NULL,
  'user_id' bigint DEFAULT NULL,
  PRIMARY KEY ('program_id'),
  UNIQUE KEY 'UK1lya6blfvm82qclafdxobtls3' ('program_name'),
  KEY 'FKehmhk564cpparc0b2r9olpbdo' ('program'),
  KEY 'FKda0cnp1fv0puba3w22or6xkpo' ('user_id'),
  CONSTRAINT 'FKda0cnp1fv0puba3w22or6xkpo' FOREIGN KEY ('user_id') REFERENCES 'user' ('user_id'),
  CONSTRAINT 'FKehmhk564cpparc0b2r9olpbdo' FOREIGN KEY ('program') REFERENCES 'user' ('user_id') ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE 'questionnaire' (
  'questionnaire_id' bigint NOT NULL,
  'created_by' varchar(255) DEFAULT NULL,
  'created_date' datetime(6) DEFAULT NULL,
  'updated_by' varchar(255) DEFAULT NULL,
  'updated_date' datetime(6) DEFAULT NULL,
  'answer' varchar(255) DEFAULT NULL,
  'question' varchar(255) NOT NULL,
  PRIMARY KEY ('questionnaire_id'),
  UNIQUE KEY 'UK4l6g29fyx1kdx7k4bu2l73f88' ('question')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE 'reward' (
  'reward_id' bigint NOT NULL,
  'created_by' varchar(255) DEFAULT NULL,
  'created_date' datetime(6) DEFAULT NULL,
  'updated_by' varchar(255) DEFAULT NULL,
  'updated_date' datetime(6) DEFAULT NULL,
  'description' varchar(255) NOT NULL,
  'reward_name' varchar(255) NOT NULL,
  PRIMARY KEY ('reward_id'),
  UNIQUE KEY 'UK1fnn9jfqkjab535c80t1ohpoi' ('reward_name')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE 'seq_program' (
  'next_val' bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE 'seq_questionnaire' (
  'next_val' bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE 'seq_reward' (
  'next_val' bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE 'user' (
  'user_id' bigint NOT NULL AUTO_INCREMENT,
  'created_by' varchar(255) DEFAULT NULL,
  'created_date' datetime(6) DEFAULT NULL,
  'updated_by' varchar(255) DEFAULT NULL,
  'updated_date' datetime(6) DEFAULT NULL,
  'active' bit(1) DEFAULT NULL,
  'email' varchar(255) DEFAULT NULL,
  'first_name' varchar(255) DEFAULT NULL,
  'last_name' varchar(255) DEFAULT NULL,
  'password' varchar(255) DEFAULT NULL,
  'username' varchar(255) DEFAULT NULL,
  PRIMARY KEY ('user_id'),
  UNIQUE KEY 'UKsb8bbouer5wak8vyiiy4pf2bx' ('username')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

commit;