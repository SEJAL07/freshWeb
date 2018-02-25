CREATE TABLE category(
    id IDENTITY,
    name VARCHAR(50),
    description VARCHAR(250),
    image_url VARCHAR(50),
    is_active BOOLEAN,
    CONSTRAINT pk_category_id PRIMARY KEY (id)
);

INSERT INTO category (name, description, image_url, is_active) values('Earrings', 'this is earrings category','img1.png','TRUE');
INSERT INTO category (name, description, image_url, is_active) values('Rings', 'this is rings category','img2.png','TRUE');
INSERT INTO category (name, description, image_url, is_active) values('Bracelets', 'this is Bracelets category','img3.png','TRUE');
INSERT INTO category (name, description, image_url, is_active) values('Necklaces', 'this is Necklaces category','img4.png','TRUE');


CREATE TABLE user_details(
    id IDENTITY,
    firts_name VARCHAR(50),
    last_name VARCHAR(50),
    role VARCHAR(50),
    enabled BOOLEAN,
    password VARCHAR(50),
    email VARCHAR(100),
    contact VARCHAR(15),
    CONSTRAINT pk_user_id PRIMARY KEY (id)
);

INSERT INTO user_details 
(firts_name,last_name,role,enabled,password,email,contact) 
values('SEJAL','CHOUDHARY','ADMIN','TRUE','admin','sc@gmail.com','9999999999');

INSERT INTO user_details 
(firts_name,last_name,role,enabled,password,email,contact) 
values('abc','xyz','SUPPLIER','TRUE','12345','abc@gmail.com','8888888888');

INSERT INTO user_details 
(firts_name,last_name,role,enabled,password,email,contact) 
values('kevin','c','SUPPLIER','TRUE','12345','kc@gmail.com','7777777777');

CREATE TABLE product(
    id IDENTITY,
    code VARCHAR(20), 
    name VARCHAR(50),
    brand VARCHAR(50),
    description VARCHAR(250),
    unit_price DECIMAL(10,2),
    quantity INT,
    is_active BOOLEAN,
    category_id INT,
    supplie_id INT,
    purchases INT DEFAULT 0,
    views INT DEFAULT 0,
    CONSTRAINT pk_product_id PRIMARY KEY (id),
    CONSTRAINT Fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
    CONSTRAINT Fk_product_supplie_id FOREIGN KEY (supplie_id) REFERENCES user_details (id),
);

INSERT INTO product
(code,name,brand,description,unit_price,quantity,is_active,category_id ,supplie_id)
values('PRDABX123','Diamonds','TBZ','best Diamond earrings available in the market',99,10,true,1,2);


INSERT INTO product
(code,name,brand,description,unit_price,quantity,is_active,category_id ,supplie_id)
values('PRDABX645','Diamond Rings','TBZ','best Diamond Rings available in the market',199,5,true,2,3);


INSERT INTO product
(code,name,brand,description,unit_price,quantity,is_active,category_id ,supplie_id)
values('PRDSK777','bracelet','SK','most unique bracelet',149,10,true,1,2);
