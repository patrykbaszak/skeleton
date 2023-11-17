# Skeleton #

A minimal project that allows you to quickly create a new project based on Symfony using useful tools: standard-version, php-cs-fixer, phpstan, phpunit.

### Usage

Create directory for your project, get in and run command:
```sh
composer create-project pbaszak/skeleton . --no-interaction
```

Start local environment:
```sh
bash start.sh
```

### App versioning

If You don't have node_modules directory run:
```sh
npm install
```

First release:
```sh
npm run version:first-release
```

Major, Minor, Patch version update:
```sh
npm run version:major
# or
npm run version:minor
# or
npm run version:patch
```

Push tags:
```sh
npm run release
```
