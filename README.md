# Rgversion 
[![Gem](https://img.shields.io/gem/v/rgversion.svg)](https://rubygems.org/gems/rgversion) [![Build Status](https://img.shields.io/travis/vavgustov/rgversion/master.svg)](https://travis-ci.org/vavgustov/rgversion) [![Maintainability](https://api.codeclimate.com/v1/badges/b5d59c13b4d649c321ea/maintainability)](https://codeclimate.com/github/vavgustov/rgversion/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/b5d59c13b4d649c321ea/test_coverage)](https://codeclimate.com/github/vavgustov/rgversion/test_coverage)
 
This library allow you to quickly copy latest semantic versions of specified gems to your clipboard. Versions will be taken from [`rubygems.org`](https://rubygems.org/). Then you can past them in your `Gemfile`.
![image](https://user-images.githubusercontent.com/312873/28492511-d2dbf140-6f0d-11e7-9912-beb8b94a1ca7.png)

## Installation

```bash
gem install rgversion
```

##### macOS / OS X
No further actions required.

##### Ubuntu / Debian
Copy to clipboard work through ``pbcopy`` and to make it work on Ubuntu / Debian you can follow these [steps](https://coderwall.com/p/oaaqwq/pbcopy-on-ubuntu-linux). 

## Usage
Open terminal and execute ``rgversion`` with list of needed gems. E.g:

```
rgversion rails puma pg
```

After that semantic version of gem(s) will be copied to your clipboard.

## License

Rgversion is released under the [MIT License](https://opensource.org/licenses/MIT).
