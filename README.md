# Overview
This is a portfolio project in the curriculum of the ALX foundations course.
The website cheesy Life provides information about cheese, all you need to know about it, nutritional facts, types and origin, recipes and much more.

# Authors
Malika Oubilla <malika.oubilla@gmail.com>

Reda Cherkaoui <redamasters@gmail.com>

# Technologies: 

1. Flask (Python Web Frameworks):
Flask: A lightweight web framework for Python that is well-suited for small to medium-sized projects.
2. SQLAlchemy (Database Toolkit for Python):
SQLAlchemy is a powerful SQL toolkit and Object-Relational Mapping (ORM) library for Python. It allows you to interact with MySQL databases using Python objects.
3. Jinja2 (Template Engine for Python):
Jinja2 is a templating engine for Python that allows you to generate HTML dynamically. It's commonly used with Flask and Django for generating HTML responses.
4. MySQL Connector/Python (MySQL Driver for Python):
MySQL Connector/Python is an official MySQL driver for Python that allows Python programs to connect to MySQL databases.
5. HTML/CSS/JavaScript (Frontend Development):
HTML: HyperText Markup Language is used to structure the content of web pages.
CSS: Cascading Style Sheets is used to style the appearance of web pages.
JavaScript: A programming language used for adding interactivity and dynamic behavior to web pages.
6. Resources : http://weldsmith.co.uk/cheesedb/cheese_db.php

# Challenge:
The project will provide the user a database of cheese that could be filtered based on calories, price, recipe compatibility, type, milk, country, and diet. It will also allow the user to enter a type of cheese and have information about it. 
The project will not allow the user to have access to all types of cheese in the world, giving the scope of the task. The user won’t be able to add information into the existing database. 
This project is intended for all people that are interested in cheese and are desiring to learn new information about cheese for whatever purpose. 
This project is not relevant or dependent on a specific locale.

## Risks:
### Technical Risks:
### Database Failure:
Potential Impact: A database failure could result in data loss, downtime, or degraded performance of the website.
Safeguards/Alternatives: Regular backups of the database, implementation of database replication for redundancy, and monitoring tools to detect and mitigate potential issues proactively.
### Security Vulnerabilities:
Potential Impact: Security vulnerabilities could lead to unauthorized access, data breaches, or other security incidents.
Safeguards/Alternatives: Implementation of secure coding practices, regular security audits and penetration testing, use of encryption for sensitive data, and timely application of security patches and updates.
### Dependency Risks:
Potential Impact: Reliance on third-party libraries or services could introduce compatibility issues, performance bottlenecks, or dependencies on external entities.
Safeguards/Alternatives: Regular monitoring of dependencies for updates and security advisories, thorough testing of new dependencies before integration, and having contingency plans in place for replacing critical dependencies if necessary.
### Non-Technical Risks:
### Market Competition:
Potential Impact: Competition from other cheese-related websites or similar platforms could affect user adoption and engagement.
Strategies to Prevent Negative Outcomes: Conduct market research to identify unique value propositions, differentiate the website through content quality and user experience, and continuously monitor competitors for emerging trends and opportunities.
Legal and Regulatory Compliance:
Potential Impact: Failure to comply with relevant laws and regulations (e.g., data protection, copyright) could result in legal action, fines, or reputational damage.
Strategies to Prevent Negative Outcomes: Stay informed about applicable laws and regulations, implement robust privacy policies and terms of service, and seek legal counsel to ensure compliance with relevant requirements.
### User Adoption and Engagement:
Potential Impact: Low user adoption or engagement rates could hinder the success and growth of the website.
Strategies to Prevent Negative Outcomes: Invest in user experience design, conduct user testing and feedback sessions, offer incentives for user participation, and actively promote the website through marketing and outreach efforts.

# Infrastructure: 
## Branching and Merging Strategy:
### Process for Branching and Merging:
We will adopt the Gitflow branching model for our repository management. This model involves maintaining separate branches for feature development, bug fixes, release preparation, and production deployment.
Feature branches will be created for each new feature or enhancement, with descriptive names reflecting the feature being developed.
Pull requests will be used to merge feature branches into the main development branch (e.g., develop). All code changes must undergo code review before merging.
Once features are thoroughly tested and ready for release, they will be merged into the master branch for deployment to production.
### Deployment Strategy:
Strategy for Deployment:
Our deployment strategy involves using a combination of Docker containers and a continuous integration/continuous deployment (CI/CD) pipeline.
Docker containers will encapsulate our Python application and MySQL database, providing consistency and portability across different environments.
We will utilize a CI/CD tool like Jenkins or GitLab CI to automate the build, test, and deployment process. Changes merged into the master branch will trigger the CI/CD pipeline, which will build the Docker images, run tests, and deploy the application to the production environment.
## Data Population:
### Populating the App with Data:
Initially, we will populate the MySQL database with sample data for development and testing purposes. This data will include various types of cheeses, producers, and user accounts.
For production deployment, we will implement a data migration strategy using Python scripts and SQL queries to import additional data from external sources.
### Testing Tools and Automation:
We will employ a comprehensive testing strategy that includes unit testing, integration testing, and end-to-end testing.
For unit testing, we will use the pytest framework to write and execute tests for individual components and functions of our Python application.
Integration testing will involve testing the interaction between different modules of the application, including the frontend HTML templates, backend API endpoints, and database interactions.
Continuous integration will be set up to automatically run tests on each code commit, ensuring that changes do not introduce regressions or break existing functionality.
## Existing solutions:
https://www.cheese.com/ is a good solution to our project idea. However, it doesn’t provide calorie or price information, two additions that will be included in our project. 

# Architecture
![Concept map](https://github.com/MO1-dot-618/cheesy-life/assets/65332320/4f11377d-e7ae-4530-92b1-4003b5ec0253)

# User Stories:
## User Story 1: 

As a cheese enthusiast, I want to explore a variety of cheese types, so that I can learn about their characteristics and origins.

### Acceptance Criteria:
The website should provide a categorized list of cheese types, such as fresh, soft, semi-soft, semi-hard, hard, and blue cheese.
Each cheese type should include a description highlighting its flavor profile, moisture, aging process, and country of origin.
Users should be able to click on each cheese type to view more detailed information and images.
## User Story 2:
 As a cooking enthusiast, I want to search for cheese recipes by type, so that I can discover new dishes to prepare using different cheeses.
### Acceptance Criteria:
The website should offer a search feature where users can search for cheese recipes by type, such as cheddar, mozzarella, or blue cheese.
Each recipe should include a list of ingredients, step-by-step instructions, cooking time, and serving suggestions.
Users should be able to filter recipes based on dietary preferences or specific ingredients.
## User Story 3: 
As a health-conscious individual, I want to access nutritional information for different cheese types, so that I can make informed decisions about my dietary choices.
### Acceptance Criteria:
The website should provide nutritional data for each cheese type, including calories, fat content, protein, carbohydrates, and calcium.
Nutritional information should be presented in an easy-to-read format and sourced from a reliable database or API.
Users should be able to compare the nutritional profiles of multiple cheese types side by side.
