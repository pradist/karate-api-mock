# Karate API Mock

## Introduction
This project demonstrates how to create an API mock using **Karate**. The mock server can be run locally or inside a **Podman** container.

---

## Prerequisites
Before running the project, ensure you have the following installed:
- **Java 11+**
- **Maven** (if using Maven for dependency management)
- **Gradle** (if using Gradle instead of Maven)
- **Podman** (if running inside a container)

---

## Installation
### 1. Clone the Repository
```sh
 git clone https://github.com/pradist/karate-api-mock.git
 cd karate-api-mock
```

### 2. Install Dependencies
If using **Maven**, run:
```sh
mvn clean install
```
If using **Gradle**, run:
```sh
./gradlew build
```

---

## Running the Mock Server
### **Run on Local Machine**
1. **Compile & Package the Application**
```sh
mvn clean package -DskipTests  # For Maven
# OR
./gradlew bootJar  # For Gradle
```
2. **Run the Mock API Server**
```sh
java -jar target/karate-mock.jar
```
3. **Test the API**
```sh
curl http://localhost:8080/api/mock
```
Expected Response:
```json
{
  "message": "Hello from Karate Mock!"
}
```

---

### **Run with Podman**
1. **Build the Container Image**
```sh
podman build -t karate-mock .
```
2. **Run the Container**
```sh
podman run -p 8080:8080 karate-mock
```
3. **Test the API**
```sh
curl http://localhost:8080/api/mock
```

---

## Project Structure
```
karate-api-mock/
│── src/
│   ├── main/
│   │   ├── java/com/example/mock/KarateMockRunner.java
│   ├── test/
│   │   ├── java/mockApi.feature
│   │   ├── resources/mockResponse.json
│── pom.xml
│── build.gradle
│── Dockerfile
│── README.md
```

---

## License
This project is open-source and available under the MIT License.

