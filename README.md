# Sanyo Web Services

This repository provides API for laptrinhweb

## Prerequisites

1. Install XAMPP
2. Install Composer
3. [Optional] For convenient, You can install as [video](https://www.youtube.com/watch?v=zT6QrGIfXaU)
4. [Optional] Install [pre-commit](https://pre-commit.com/)

### PHP env

1. Install Library

```bash
composer install
```

### PostgreSQL DB

https://www.postgresql.org/

## Source structure & overview

This section will explain and overview in high level of source code structure and point out some important files/folders

- _.env.`<env>`_ (ex: `.env.local`) The source value for _.env_ file of `<env>`. Use in `<env>` environment
- _composer.json_: List of library and software used
- _index.php_: Using for running PHP app
- PHP source code directory
  - _api_: API router
  - _config_: config PHP app
  - _db_: query processing (SELECT, INSERT, UPDATE, ...) of DB
  - _pkg_: common process for logic
  - _usecase_: business logic processing

## pre-commit [optional]

For making src more clean and standard. Refer to config file [.pre-commit-config.yaml](.pre-commit-config.yaml).

## Libraries

We use:

- [PHP](https://www.php.net/): for web development
- [PHP dotenv](https://github.com/vlucas/phpdotenv): for loading env.
- [PostgreSQL](https://www.postgresql.org/): for DB
- [pre-commit](https://pre-commit.com/): For making src more clean and standard before committing.
