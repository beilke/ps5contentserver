# PS5 Content Server

This project provides a simple HTTP file server for serving payloads or other content, designed for use with PlayStation 5 payload delivery or similar scenarios.

## Features
- Lightweight Node.js server using `http-server`
- Dockerized for easy deployment
- Healthcheck script included
- CORS enabled and directory listing supported

## Usage

### Build the Docker Image
```sh
docker build -t ps5contentserver .
```

### Run the Server
```sh
docker run -d -p 8080:8080 -v $(pwd)/public:/usr/src/app/data ps5contentserver
```
This will serve files from your local `public/` directory at `http://localhost:8080`.

### Healthcheck
The container includes a `healthcheck.sh` script for basic health monitoring.

## File Structure
- `public/` - Place your payloads or files to be served here
- `dockerfile` - Docker build instructions
- `healthcheck.sh` - Healthcheck script
- `generateBuild.sh` - (Optional) Build helper script
- `README.md` - Project documentation

## Requirements
- Docker

## License
MIT
