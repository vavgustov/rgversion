# rgversion [![Gem](https://img.shields.io/gem/v/rgversion.svg)](https://rubygems.org/gems/rgversion) [![Build Status](https://img.shields.io/travis/vavgustov/rgversion/master.svg)](https://travis-ci.org/vavgustov/rgversion) [![Code Climate](https://img.shields.io/codeclimate/github/vavgustov/rgversion.svg)](https://codeclimate.com/github/vavgustov/rgversion)
 
This library allow you to quickly copy latest semantic versions of specified gems to your clipboard. Versions will be taken from [`rubygems.org`](https://rubygems.org/). Then you can past them in your `Gemfile`.
![image](https://cloud.githubusercontent.com/assets/312873/25066821/21615b82-223a-11e7-8110-4e91127a0b6c.png)

## Installation

```bash
gem install rgversion
```

Copy to clipboard work through ``pbcopy`` and will be work out from the box on macOS / OS X.
To make it work in Ubuntu / Debian you can follow these [steps](https://coderwall.com/p/oaaqwq/pbcopy-on-ubuntu-linux). 

## Usage
Open terminal and execute ``rgversion`` with list of needed gems. E.g:

```
rgversion rails puma pg
```

After that semantic version of gem(s) will be copied to your clipboard. 