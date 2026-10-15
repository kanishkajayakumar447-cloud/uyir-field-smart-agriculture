# UYIR FIELD — Smart Agriculture Protection and Crop Advisory System

A software-only full-stack portfolio project demonstrating farm plots, simulated environmental readings, example rule-based crop advisories, and virtual crop-protection event history.

## Technology
- Java 17+
- Spring Boot 3.4.5, Spring Web/REST, Spring JDBC
- MySQL
- HTML, CSS, JavaScript
- Maven

## Important scope note
Sensor values are randomly simulated. Risk labels, recommendations, and virtual arch OPEN/CLOSE actions are example rules for demonstration. No hardware or live weather service is connected. This is not professional agronomy advice.

## Requirements
1. JDK 17 or newer
2. Eclipse IDE for Java Developers
3. MySQL Server and MySQL Workbench
4. Internet access for Maven to download dependencies on first import

## Run it
1. Extract the ZIP.
2. Open MySQL Workbench and connect to your local server.
3. Open `database/setup.sql` and execute it. It creates `uyir_field`, four tables, and three sample plots.
4. Open `src/main/resources/application.properties`. Replace `CHANGE_ME` with your MySQL password. Change username if your account is not `root`.
5. Open Eclipse → **File → Import → Maven → Existing Maven Projects**. Select the extracted `UYIR_FIELD` folder and finish.
6. Wait for Maven dependencies to download.
7. Open `src/main/java/com/uyirfield/UyirFieldApplication.java`; right-click → **Run As → Java Application** (or Spring Boot App if available).
8. Visit `http://localhost:8080`.

## API endpoints
- `GET /api/health`
- `GET /api/plots`
- `GET /api/dashboard`
- `POST /api/plots/1/simulate`
- `GET /api/advisories`
- `GET /api/protection-events`

## Troubleshooting
- **Access denied:** update MySQL username/password in `application.properties`.
- **Unknown database:** run `database/setup.sql` in Workbench.
- **Port 8080 already in use:** set `server.port=8081` and visit `http://localhost:8081`.
- **Java version error:** use JDK 17+ and configure Eclipse to use that JDK.
- **Maven download issue:** check internet connection and Eclipse Maven console.

## Resume description (only after you run and understand it)
**UYIR FIELD — Smart Agriculture Protection and Crop Advisory System** | Java, Spring Boot, MySQL, REST API, HTML, CSS, JavaScript
- Built a full-stack agriculture dashboard with farm-plot records and simulated environmental readings persisted in MySQL.
- Implemented REST endpoints and rule-based risk/advisory generation, with virtual crop-protection event history.
- Created a responsive web interface for reviewing plot conditions, recommendations, and simulated protection actions.
