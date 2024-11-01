USE Coffexpress;
-- Payment table
CREATE TABLE Payment (
	id_payment INT NOT NULL IDENTITY,
	id_order INT NOT NULL,
	payment_method CHAR(2) NOT NULL,
	payment_status CHAR(2) NOT NULL,
	payment_date DATETIME NOT NULL DEFAULT GETDATE()
	CONSTRAINT PK_payment PRIMARY KEY (id_payment),
	CONSTRAINT FK_payment_id_order FOREIGN KEY (id_order) REFERENCES Orders (id_order) ON DELETE NO ACTION
);
CREATE INDEX IX_Payment_id_order ON Orders (id_order);