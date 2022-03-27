# ✔️ Requirements

- I'm assuming that you have [Docker](https://www.docker.com/products/docker-desktop) installed and configured for your OS (strongly recommend using WSL2 if you're using Windows)

# 🚢 Setup containers

Assuming you're in the root dir:

1. Copy `.env.example` => `.env`

```
cp .env.example .env
```

2. Build containers

```bash
docker-compose up -d
```

3. Nginx and MySQL ready to go. By default, the server will be running at http://127.0.0.1:8000.

# ⚙ Setup Laravel project

1. Copy `src/.env.example` => `src/.env`

```
cp src/.env.example src/.env
```

2. Install dependencies

```bash
docker-compose run --rm composer install
```

3. Generate APP_KEY

```bash
docker-compose run --rm artisan key:generate
```

4. Make sure to change the `.env` data of your Laravel project to match the database info you provided to the `.env` on the root folder of this project.

# How to use

## NPM

```bash
docker-compose run --rm node npm #NPM command (install, run dev...)
```

## PHP

```bash
docker-compose run --rm php #PHP command
```
