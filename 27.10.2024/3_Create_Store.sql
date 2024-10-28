-- Store table
CREATE TABLE Store (
    id_store INT NOT NULL IDENTITY,
    store_mail VARCHAR(255) NOT NULL,
    store_password VARCHAR(255) NOT NULL,
    store_name VARCHAR(255) NOT NULL,
    store_description TEXT,
    store_location VARCHAR(255) NOT NULL,
    store_picture VARCHAR(255),
    store_creation_date DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_Store PRIMARY KEY (id_store),
    CONSTRAINT UQ_Store_store_mail UNIQUE (store_mail)
);