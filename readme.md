# Octoprint snap

This repository provides build snapcraft build declarations for octoprint.

## Bosch Rexroth ctrlX CORE Support

This snap works best with Bosch Rexroth ctrlX CORE and is integrated into the environment

## BUILD

```
snapcraft
```

## Install

```
snap install octoprint-sdev
```

Service will be available on port :5000

### Parallel installations

```
snap set system experimental.parallel-instances=true
snap install --dangerous --name octoprint-sdev_mega octoprint-sdev
snap install --dangerous --name octoprint-sdev_artistd octoprint-sdev
```

## Maintainers

Jochen Scheib
