# LIBRARY-MANAGEMENT-SYSTEM-

Library Management System
This project contains an SQL schema and ER diagram for a basic Library Management System.

📁 Project Structure

schema.sql – SQL script to create database schema with relationships
LIB.png – (Optional) Entity-Relationship Diagram for visual understanding
README.md – Project overview and instructions

🧰 Tools Used

MySQL Workbench
GitHub
📚 Schema Overview
The schema includes the following tables:

Authors – Stores author details
Books – Stores book details, linked to Authors
Members – Stores member details
Borrowings – Tracks which members borrowed which books

🔗 Relationships

One author can write many books (1:M)
One member can borrow many books (M:M via Borrowings)
Each borrowing record links one book and one member

🚀 Getting Started

To use this project:

Clone or download the repo
Open schema.sql in MySQL Workbench or pgAdmin
Run the script to create all tables
(Optional) View LIB.png for visual representation
