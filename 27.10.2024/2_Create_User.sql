USE Coffexpress;
-- Users Table
CREATE TABLE Users (
	id_user INT NOT NULL IDENTITY,
	user_mail VARCHAR(50) NOT NULL,
	user_password VARCHAR(50) NOT NULL,
	user_firstname VARCHAR(50) NOT NULL,
	user_lastname VARCHAR(50) NOT NULL,
	user_address VARCHAR(50) NOT NULL,
	user_phone VARCHAR(20),
	user_picture  VARBINARY(MAX),
	user_creation_date DATETIME NOT NULL DEFAULT GETDATE(),
	CONSTRAINT PK_users PRIMARY KEY (id_user),
	CONSTRAINT UQ_users_mail UNIQUE (user_mail)
);