-- Order table
CREATE TABLE Order (
    id_order INT NOT NULL IDENTITY,
    id_user INT NOT NULL,
    order_price DECIMAL(8, 2) NOT NULL,
    order_divisa CHAR(3) NOT NULL,
    order_status VARCHAR(25) NOT NULL,
    order_creation_date DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_Order PRIMARY KEY (id_order),
    CONSTRAINT FK_Order_User_id_user FOREIGN KEY (id_user) REFERENCES User (id_user) ON DELETE NO ACTION
);
CREATE INDEX IX_Order_id_user ON Order (id_user);