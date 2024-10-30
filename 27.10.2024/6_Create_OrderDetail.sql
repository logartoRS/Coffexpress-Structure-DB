USE Coffexpress;
-- OrderDetail table
CREATE TABLE OrderDetail (
    id_order_detail INT NOT NULL IDENTITY,
    id_order INT NOT NULL,
    id_product INT NOT NULL,
    order_details_quantity INT NOT NULL,
    order_details_price DECIMAL(8, 2) NOT NULL,
    order_details_divisa CHAR(3) NOT NULL,
    CONSTRAINT PK_OrderDetail PRIMARY KEY (id_order_detail),
    CONSTRAINT FK_OrderDetail_Order_id_order FOREIGN KEY (id_order) REFERENCES Orders (id_order) ON DELETE NO ACTION,
    CONSTRAINT FK_OrderDetail_Product_id_product FOREIGN KEY (id_product) REFERENCES Products (id_product) ON DELETE NO ACTION
);
CREATE INDEX IX_OrderDetail_id_order ON OrderDetail (id_order);
CREATE INDEX IX_OrderDetail_id_product ON OrderDetail (id_product);