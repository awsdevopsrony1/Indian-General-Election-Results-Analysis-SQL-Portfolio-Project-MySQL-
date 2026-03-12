
# Indian Election Results Analysis – SQL Portfolio Project

## Project Overview

This project presents a comprehensive SQL-based analysis of Indian parliamentary election results using a structured relational database. The objective of the project is to simulate real-world data analyst tasks by transforming raw election datasets into meaningful insights using MySQL.

The dataset includes detailed information about constituencies, candidates, parties, and state-level voting results. Through SQL queries and relational database design, the project explores patterns in vote distribution, party performance, and constituency-level outcomes.

This project demonstrates practical data analyst skills including data exploration, data aggregation, relational joins, ranking, and analytical queries commonly used in real business environments.

## Objectives

The primary objectives of this project are:

* Design a structured relational database from multiple CSV datasets.
* Perform exploratory data analysis using SQL.
* Analyze party performance and constituency-level voting patterns.
* Demonstrate advanced SQL techniques such as joins, aggregation, and window functions.
* Present insights in a clear and structured analytical format suitable for portfolio presentation.

## Dataset Information

The dataset used in this project is sourced from Kaggle and contains Indian parliamentary election results. The data is organized into multiple CSV files representing different levels of election information.

The dataset includes the following tables:

* **constituencywise_details** – Candidate-level voting information for each constituency.
* **constituencywise_results** – Final results for each parliamentary constituency.
* **partywise_results** – Total seats won by each political party.
* **statewise_results** – Aggregated voting data at the state level.
* **states** – Reference table containing state identifiers and names.

These datasets together allow detailed analysis of election performance at candidate, constituency, party, and state levels.

## Database Schema

The project uses a relational database structure designed to connect constituency, party, and state information.

Key relationships include:

* Each constituency contains multiple candidates.
* Each constituency result is associated with a political party.
* Constituencies belong to a specific state.
* Party results summarize total seats won.

The database schema is visualized through an **Entity Relationship (ER) Diagram** included in this repository.

## ER Diagram

The ER diagram illustrates the relationships between all tables used in the analysis and helps understand how election data flows across the database.

The diagram highlights:

* Primary keys and foreign keys
* One-to-many relationships
* Table connections between candidates, constituencies, parties, and states

## SQL Analysis

This project contains multiple analytical SQL queries designed to answer real-world questions about election results. The analysis covers several categories:

**Exploratory Analysis**

* Total number of candidates and constituencies
* Distribution of votes across candidates
* State-level constituency counts

**Performance Analysis**

* Parties winning the highest number of seats
* Candidates with the highest vote counts
* Constituencies with the highest voter participation

**Advanced SQL Analysis**

* Ranking candidates within constituencies
* Identifying top-performing candidates using window functions
* Calculating vote share percentages
* Comparing voting margins between candidates

The repository includes more than 20 SQL queries demonstrating different SQL concepts such as:

* WHERE filtering
* GROUP BY aggregations
* JOIN operations
* Subqueries
* Window functions (RANK, DENSE_RANK, LAG)

## Key Skills Demonstrated

This project highlights several important data analyst skills:

* SQL Data Analysis
* Data Cleaning and Importing CSV Data
* Relational Database Design
* Writing Analytical SQL Queries
* Aggregation and Grouping
* Window Functions for Ranking and Comparison
* Translating raw data into analytical insights

## Tools and Technologies

* MySQL
* SQL Server / MySQL Workbench
* CSV Data Processing
* GitHub for version control
* Kaggle dataset source

## Project Structure

The repository is organized as follows:

* dataset/
  Raw CSV datasets used for the analysis

* sql_queries/
  SQL scripts used for data exploration and analysis

* er_diagram/
  Database relationship diagram

* README.md
  Project documentation

## Insights and Findings

Through SQL-based analysis, the project identifies trends in voting patterns, party dominance across constituencies, and variations in vote share across different regions. These insights demonstrate how structured query language can be used to extract meaningful information from large datasets.

## About This Project

This project was created as part of a data analyst portfolio to demonstrate practical SQL skills using a real-world dataset. The goal is to showcase the ability to design relational databases, perform structured data analysis, and communicate insights clearly through queries and documentation.

## Author

Sourav
Aspiring Data Analyst | SQL | Data Analysis | Data Visualization
