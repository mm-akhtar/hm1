CREATE DATABASE hm1;

USE hm1;

CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name CHAR(20) UNIQUE NOT NULL,
    pswd CHAR (30) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO users(user_name, pswd) VALUES
('akhtar4', '123456'),
('altamash4','345674'),
('sarfaraz84','675423758'),
('sudheer44','7456258'),
('kalam634','83792394'),
('arshad74','937543895');

CREATE TABLE rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_name VARCHAR(30) NOT NULL,
    room_type VARCHAR(10) NOT NULL,
    price DECIMAL(8,2) NOT NULL
);

INSERT INTO rooms(room_name, room_type, price) VALUES
('Luxury Room', 'A/C', '10000'),
('Grande City View', 'A/C', '10000'),
('Grande Sea View', 'NON A/C', '7000'),
('Taj Club City View', 'DELUX', '20000'),
('Taj Club Sea View', 'SUIT', '50000');



CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    f_name VARCHAR(30) NOT NULL,
    l_name VARCHAR(30) NOT NULL,
    adds VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    ph_no INT NOT NULL
);


INSERT INTO customers(f_name, l_name, adds, age, email, ph_no) VALUES
('sarfarz', 'kahan', 'Bangalore', '21', 'ahmedsarfaraz@gmail.com', '9577780979'),
('altamash', 'subedaar', 'mumbai', '19', 'altamshsebhedar@gmail.com', '6363580979'),
('akhtar', 'khan', 'Karimganj', '23', 'akhtarkhanz@yahoo.com', '9365280979'),
('sudheer', 'sharma', 'lucknow', '25', 'sudheer@gmail.com', '8985680979'),
('nixon', 'dr', 'chennai', '39', 'nixonkabir@hotmail.com', '9577712345');

CREATE TABLE reservation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT NOT NULL,
    customer_id INT NOT NULL,
    check_in TIMESTAMP DEFAULT NOW(),
    check_out TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (room_id) REFERENCES rooms(id),
    FOREIGN key (customer_id) REFERENCES customers(id)   
);


INSERT INTO reservation(room_id, customer_id) VALUES
('1', '5' ),
('4', '1' ),
('2', '2' ),
('3', '3' ),
('5', '4' );


