# Rgversion 
[![Gem](https://img.shields.io/gem/v/rgversion.svg)](https://rubygems.org/gems/rgversion) [![Build Status](https://img.shields.io/travis/vavgustov/rgversion/master.svg)](https://travis-ci.org/vavgustov/rgversion) [![Maintainability](https://api.codeclimate.com/v1/badges/b5d59c13b4d649c321ea/maintainability)](https://codeclimate.com/github/vavgustov/rgversion/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/b5d59c13b4d649c321ea/test_coverage)](https://codeclimate.com/github/vavgustov/rgversion/test_coverage)
 
This gem allow you to add to clipboard latest semantic versions of specified gems from terminal. Then you can past 
them in your `Gemfile` or whatever you want. [Giphy here](https://github.com/vavgustov/rgversion/wiki/Giphy).

![image](https://user-images.githubusercontent.com/312873/28492511-d2dbf140-6f0d-11e7-9912-beb8b94a1ca7.png)

## Installation

```bash
gem install rgversion
```

##### macOS / OS X
No further actions required.

##### Ubuntu / Debian
You may need to install `xclip` for clipboard feature:
```bash
sudo apt-get install xclip
``` 

## Usage
Open terminal and execute ``rgversion`` with list of needed gems. E.g:

```
rgversion rails puma pg
```

Then just past your clipboard to Gemfile.

## License

Rgversion is released under the [MIT License](https://opensource.org/licenses/MIT).
