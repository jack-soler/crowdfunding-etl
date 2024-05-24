CREATE TABLE category (
    category_id VARCHAR   NOT NULL,
    category VARCHAR   NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR   NOT NULL,
    subcategory VARCHAR   NOT NULL,
    PRIMARY KEY (subcategory_id)
);


CREATE TABLE contacts (
    contact_id INT   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    email VARCHAR   NOT NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
    cd_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal NUMERIC NOT NULL,
    pledge NUMERIC NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id)
);

