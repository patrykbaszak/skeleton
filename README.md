# Skeleton #

### Usage

Create directory for your project, get in and run command:
```sh
composer create-project pbaszak/skeleton .
# Do you want to execute this recipe? - y
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
