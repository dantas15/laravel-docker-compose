# Requirements

- I'm assuming that you have [Docker](https://www.docker.com/products/docker-desktop) installed and configured for your OS (strongly recommend using WSL2 if you're using Windows)
- Also, I'll be using [PHP 8.0](https://www.php.net/downloads) and [Composer](https://getcomposer.org/) when creating a new Laravel project

# Setup containers

Assuming you're in the root dir:

1.. Copy `.env.example` => `.env`

```
cp .env.example .env
```

2. Build containers

```bash
docker-compose up -d
```

3. Nginx and MySQL ready to go. By default, the server will be running at http://127.0.0.1:8000. But you can venture yourself and change this in `docker-compose.yml`

# Setup Laravel project

If you'd like, you can use the sample project I created or just create a new [Laravel project](https://laravel.com/docs/9.x/installation) in the `src/` folder

## Using the sample project

1. Make sure you're in the `src/` dir

2. Install dependencies

```bash
composer install
```

3. Copy `.env.example` => `.env`

```
cp .env.example .env
```

4. Make sure to change the `.env` data of your Laravel project to match the database info you provided to the `.env` on the root folder of this project.

## (Alternative) Create a new Laravel project

1. Follow the steps provided by the [Laravel Installation docs](https://laravel.com/docs/9.x/installation)

2. Make sure to change the `.env` data of your Laravel project to match the database info you provided to the `.env` on the root folder of this project.

# Running your project

**In the root dir**:

1. Run containers

```bash
docker-compose up -d
```
