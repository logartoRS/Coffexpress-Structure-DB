USE Coffexpress;
-- ShoppingCartDetail table
CREATE TABLE ShoppingCartDetail (
	id_shopcart_detail INT NOT NULL IDENTITY,
	id_shopcart INT NOT NULL,
	id_product INT NOT NULL,
	shopcart_quantity INT,
	CONSTRAINT PK_shopcart_detail PRIMARY KEY (id_shopcart_detail),
	CONSTRAINT FK_shopcart_detail_id_shopcart FOREIGN KEY (id_shopcart) REFERENCES ShoppingCart (id_shopcart) ON DELETE NO ACTION,
	CONSTRAINT FK_shopcart_detail_id_product FOREIGN KEY (id_product) REFERENCES Products (id_product) ON DELETE NO ACTION
);