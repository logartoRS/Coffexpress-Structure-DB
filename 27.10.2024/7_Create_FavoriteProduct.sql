USE Coffexpress;
-- FavoriteProduct table
CREATE TABLE FavoriteProduct (
	id_favorite_product INT NOT NULL IDENTITY,
	id_user INT NOT NULL,
	id_product INT NOT NULL,
	favorite_product_date DATETIME NOT NULL DEFAULT GETDATE()
	CONSTRAINT PK_favorite_product PRIMARY KEY (id_favorite_product),
	CONSTRAINT FK_favorite_product_id_user FOREIGN KEY (id_user) REFERENCES Users (id_user) ON DELETE NO ACTION,
	CONSTRAINT FK_favorite_product_id_product FOREIGN KEY (id_product) REFERENCES Products (id_product) ON DELETE NO ACTION
);
