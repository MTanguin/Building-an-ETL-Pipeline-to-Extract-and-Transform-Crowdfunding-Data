crowdfunding_db_schema.sql

--Creating table schema
--Note: If the table name exists, drop the table first before creating a new one



--Create a table name category
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY NOT NULL,
	category VARCHAR(255) NOT NULL
);

--Import category.csv file into the table
--Verify/View the table
SELECT * FROM category;
	

--Create a table name subcategory
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(255) NOT NULL
);

--Import subcategory.csv file into the table
--Verify/View the table
SELECT * FROM subcategory;


--Create a table name contacts
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL
);

--Import contacts_.csv file into the table
--Verify/View the table
SELECT * FROM contacts;


--Create a table name campaign
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
		FOREIGN KEY (contact_id)REFERENCES contacts(contact_id),
	company_name VARCHAR(255) NOT NULL,
	description VARCHAR(255) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(255) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(255) NOT NULL,
	currency VARCHAR(255) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
		FOREIGN KEY (category_id)REFERENCES category(category_id),
	subcategory_id VARCHAR(10) NOT NULL,
		FOREIGN KEY (subcategory_id)REFERENCES subcategory(subcategory_id)
);

--Import campaign_.csv file into the table
--Verify/View the table
SELECT * FROM campaign;
