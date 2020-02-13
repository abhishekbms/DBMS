create table BRANCH(
branch_name varchar(30),
branch_city varchar(30),
assets float);

create table ACCOUNTS(
accno int,
branch_name varchar(30),
balance float,
primary key(accno),
foreign key(branch_name)references branch(branch_name));

create table DEPOSITOR(
customer_name varchar(30),
customer_street varchar(30),
customer_city varchar(30));

create table LOAN(
loan_number int,
branch_name varchar(30),
amount float,
primary key(loan_number),
foreign key(branch_name)references branch(branch_name));

create table BORROWER(
customer_name varchar(30),
loan_number int,
foriegn key(customer_name)references depositor(customer_name),
foreign key(loan_number)references loan(loan_number));