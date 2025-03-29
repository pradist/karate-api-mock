# 🥋 Karate API Mock Server

Mock API server built with [Karate](https://github.com/karatelabs/karate) for simulating API behavior during development and testing.

## 📦 Features

- Mock API responses using Karate DSL
- Easily configurable endpoints
- Packaged as an executable JAR with Shadow plugin
- CLI and Gradle support for local development

## 🚀 Getting Started

### ✅ Requirements

- Java 11 or higher
- Gradle 7+
- (Optional) `make` for easier CLI commands

### 🔧 Build the Project

You can build the project using either Gradle or Makefile:

```bash
# Using Make
make build

# Or using Gradle directly
./gradlew clean build
```

### ▶️ Run the Mock Server

Run the mock server directly:

```bash
# Using Make
make run

# Or using Gradle
./gradlew runMockServer
```

You can also run the generated JAR file:

```bash
java -jar build/libs/karate-api-mock-1.4.0-SNAPSHOT.jar
```

## 🧪 Example Endpoint

After the server is running, you can access your mocked endpoints at:

``` sh
http://localhost:8080/your/mock/endpoint
```

> You can define and customize your endpoints in the Karate `.feature` files inside `src/test/java`.

## 🛠 Development

### Run tests

```bash
./gradlew test
```

### Build only the shadow (fat) JAR

```bash
./gradlew shadowJar
```

## 📁 Project Structure

``` plaintext
karate-api-mock/
├── src/
│   └── test/java/                # Karate feature files & mock server runner
├── build.gradle                  # Gradle configuration
├── Makefile                      # Simplified CLI commands
└── README.md                     # You're here!
```

## 📦 Packaging

This project uses the Shadow plugin to create an executable JAR.

To generate the shadow JAR:

```bash
./gradlew shadowJar
```

The output will be located at:

``` sh
build/libs/karate-api-mock-1.4.0-SNAPSHOT.jar
```

## 🙌 Credits

- [Karate DSL](https://github.com/karatelabs/karate) – API testing & mocking
- [Shadow Plugin](https://github.com/johnrengelman/shadow) – For creating fat JARs
- [Gradle](https://gradle.org/) – Build tool

## 📄 License

This project is licensed under the MIT License.
