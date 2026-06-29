# Surveillance FHIR IG

This repository contains a FHIR Implementation Guide for disease surveillance workflows in Kenya.

## Prerequisites

Before building the guide, make sure you have:

- Node.js and npm
- Java 17 or newer
- SUSHI installed globally

### macOS

```bash
brew install node openjdk@17
npm install -g fsh-sushi
```

### Windows

Install Node.js from https://nodejs.org/ and Java 17 from https://adoptium.net/temurin/releases/.

Then open PowerShell and run:

```powershell
npm install -g fsh-sushi
```

### Linux

On Debian/Ubuntu:

```bash
sudo apt update
sudo apt install -y openjdk-17-jdk nodejs npm
sudo npm install -g fsh-sushi
```

On Fedora:

```bash
sudo dnf install -y java-17-openjdk nodejs npm
sudo npm install -g fsh-sushi
```

## Setup

1. Clone the repository and change into the project folder:

```bash
cd Surveillance-FHIR-IG
```

2. Make the build scripts executable:

```bash
chmod +x _updatePublisher.sh _genonce.sh _gencontinuous.sh
```

3. Download or update the FHIR IG Publisher:

```bash
./_updatePublisher.sh
```

## Run the implementation guide

Generate the IG locally:

```bash
./_genonce.sh
```

The generated site will be available in the `output/` folder. Open `output/index.html` in your browser to view it.

For automatic rebuilding while editing, use:

```bash
./_gencontinuous.sh
```

If the publisher is missing or outdated, run `./_updatePublisher.sh` again.
