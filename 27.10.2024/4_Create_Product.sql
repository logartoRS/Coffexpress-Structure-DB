USE Coffexpress;
-- Product table
CREATE TABLE Products (
    id_product INT NOT NULL IDENTITY,
    id_store INT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_category VARCHAR(25) NOT NULL,
    product_price DECIMAL(8, 2) NOT NULL,
    product_divisa CHAR(3) NOT NULL,
    product_description TEXT,
    product_picture VARCHAR(255),
    product_stock INT NOT NULL,
    product_creation_date DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_Product PRIMARY KEY (id_product),
    CONSTRAINT FK_Product_Store_id_store FOREIGN KEY (id_store) REFERENCES Store (id_store) ON DELETE NO ACTION
);
CREATE INDEX IX_Product_id_store ON Products (id_store);