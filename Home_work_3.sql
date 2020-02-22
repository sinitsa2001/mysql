DROP table if exists  hobby_user; -- увлечения 
CREATE table hobby_user(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	hobby_user_id BIGINT UNSIGNED NOT NULL,
	name VARCHAR (150),
	body text,
	filename varchar(255),
	INDEX (hobby_user_id),
	FOREIGN KEY (hobby_user_id) references users(id)
	);

DROP TABLE IF EXISTS fitnes_profiles; -- фитнес
CREATE TABLE fitnes_profiles (
	user_id BIGINT UNSIGNED NOT NULL,
	fitnes_profiles_id BIGINT UNSIGNED NOT NULL,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
	height INT,
	weight INT,
    created_at DATETIME DEFAULT NOW(),
    gym VARCHAR(100),
    body text,
    PRIMARY KEY (user_id, fitnes_profiles_id), 
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (fitnes_profiles_id) REFERENCES communities(id)
);

DROP TABLE IF EXISTS user_personal_diary; -- персональный дневник
CREATE TABLE user_personal_diary(
	id SERIAL PRIMARY KEY,
    user_personal_diary_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (user_personal_diary_type_id) REFERENCES media_types(id)
