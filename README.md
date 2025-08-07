# LIBRARY-MANAGEMENT-SYSTEM-

Library Management System
This project contains an SQL schema and ER diagram for a basic Library Management System.

📁 Project Structure

a. schema.sql – SQL script to create database schema with relationships

b. LIB.png – (Optional) Entity-Relationship Diagram for visual understanding

c. README.md – Project overview and instructions

🧰 Tools Used

1. MySQL Workbench
2. GitHub

📚 Schema Overview
The schema includes the following tables:

Authors – Stores author details
Books – Stores book details, linked to Authors
Members – Stores member details
Borrowings – Tracks which members borrowed which books

🔗 Relationships

I. One author can write many books (1:M)
II. One member can borrow many books (M:M via Borrowings)
III. Each borrowing record links one book and one member

🚀 Getting Started

To use this project:

Clone or download the repo
Open schema.sql in MySQL Workbench or pgAdmin
Run the script to create all tables
(Optional) View LIB.png for visual representation
