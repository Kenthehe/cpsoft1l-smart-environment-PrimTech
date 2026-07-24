#Smart Environment IoT MVP — Frontend


#Overview

This is the frontend module of the Smart Environment IoT MVP, a full-stack IoT project that combines web, backend, and embedded hardware components into a structured, maintainable system for smart environment monitoring and control.

The frontend provides the user interface for interacting with the smart environment system — displaying live sensor data, device status, and controls sourced from the backend API.


#Tech Stack

HTML – page structure and markup
CSS – styling and layout
JavaScript – client-side logic and API integration


#Folder structure

frontend/
├── index.html          # Main entry page
├── css/                 # Stylesheets
├── js/                  # JavaScript source files
├── assets/               # Images, icons, and static assets
└── README.md            # This file

Note: Adjust the structure above to match the actual files as they are added to the frontend/ directory.


#Running Locally

1. Clone the repository: 

git clone <repository-url>

2. Navigate the frontend folder: 

cd frontend

3. Open index.html in your browser, or run it through a local development server (e.g., VS Code Live Server) for the best experience, especially when making API calls to the backend.


#Connecting to the Backend

The frontend communicates with the Node.js backend via REST API calls. Ensure the backend server is running locally (or update the API base URL in the frontend configuration) before testing features that depend on live data.

Do not hardcode API keys, tokens, or connection strings in frontend source files. Reference .env.example at the project root for the expected environment variable names, and use safe, placeholder-based configuration for any values needed client-side.


#Contributing

This module follows the project-wide contributing guidelines defined in the root CONTRIBUTING.md. Key points:


#Branching

All work must be done on a feature or bugfix branch:

Feature branch: feature/<CLICKUP-key>-<short-description>
Bugfix branch: bugfix/<CLICKUP-key>-<short-description>


#Commit Format

<CLICKUP-key> <imperative description>


#Pull Requests

All changes must:
1. Be submitted through a pull request.
2. Include the related ClickUp issue.
3. Explain the change.
4. Include testing evidence.
5. Be reviewed by another team member.
6. Address review comments before merging.


#Security

Never commit passwords, tokens, API keys, connection strings, or real .env files.
Use .env.example with placeholder values only.

#Team Name	
                            Role
Buncab, Jhastyne Rei M.	    Product Owner
Carreon, Sean Enrique D.	Scrum Master
Regencia, Kent Johnfrey N.	Lead Dev (Full Stack)
Juan, John Paul R.	        Lead Dev (IoT/Hardware)
Mofada, Allen Patrick B.	QA/DevOps


#Related Documentation

Project-wide overview: root README.md
Contribution rules: root CONTRIBUTING.md
Backend documentation: backend/README.md
Embedded/IoT documentation: embedded/README.md