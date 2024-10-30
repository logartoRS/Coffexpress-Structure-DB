USE Coffexpress;
-- ShoppingCart table
CREATE TABLE ShoppingCart (
	id_shopcart INT NOT NULL IDENTITY,
	id_user INT NOT NULL,
	shopcart_creation_date DATETIME NOT NULL DEFAULT GETDATE()
	CONSTRAINT PK_shopcart PRIMARY KEY (id_shopcart),
	CONSTRAINT FK_shopcart_id_user FOREIGN KEY (id_user) REFERENCES Users (id_user) ON DELETE NO ACTION
);
