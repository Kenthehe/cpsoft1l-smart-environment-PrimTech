Title: Smart Environment IoT MVP

Problem Statement:

Many smart environment systems require multiple hardware and software components to work together. Without a structured development workflow, teams may experience inconsistent environments, poor version control, unclear task ownership, and difficulty tracking software defects.

This project establishes a Full-Stack IoT Minimum Viable Product using a structured software development process supported by GitHub and ClickUp.


Target Users and Stakeholder Value:

The target users are individuals and organizations that require an IoT-based smart environment solution. The project provides value by combining software, hardware, and project-management practices into a structured and maintainable system.


Team Members and Roles:

Members & Roles:
- Buncab, Jhastyne Rei M. - Product Owner 
- Carreon, Sean Enrique D. - Scrum Master 
- Regencia, Kent Johnfrey N. - Lead Dev (Full Stack)
- Juan, John Paul R. - Lead Dev (IoT/Hardware)
- Mofada, Allen Patrick B. - OA/DevOps

Planned Technology Stack

- Frontend: HTML, CSS, JavaScript
- Backend: Node.js
- Version Control: Git and GitHub
- Project Management: ClickUp
- IoT Simulation: Wokwi
- Database: MongoDB Atlas
- Development Environment: Visual Studio Code

Repository Structure

- frontend/ – Frontend application files
- backend/ – Backend application files
- embedded/ – IoT and embedded system files
- docs/ – Project documentation
- README.md – Project overview
- CONTRIBUTING.md – Contribution rules
- .env.example – Safe environment variable template



Contributing Guidelines

Branching:

-All work must be performed on a feature or bugfix branch.


Feature branch:

feature/<CLICKUP-key>-<short-description>


Bugfix branch:

bugfix/<CLICKUP-key>-<short-description>



Commit Format

Commits must follow:

<CLICKUP-key> <imperative description>

Example:

SEM-8 Fix application startup error





PULL REQUEST:

All changes must:

1. Be submitted through a pull request.
2. Include the related ClickUp issue.
3. Explain the change.
4. Include testing evidence.
5. Be reviewed by another member.
6. Address review comments before merging.


Security:

Passwords, tokens, API keys, connection strings, and real .env files must not be committed.





Use .env.example with placeholder values instead.