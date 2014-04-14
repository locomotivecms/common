# LocomotiveCMS Common

[![Gem Version](https://badge.fury.io/rb/common.png)](http://badge.fury.io/rb/locomotivecms_common)

[![Code Climate](https://codeclimate.com/github/locomotivecms/common.png)](https://codeclimate.com/github/locomotivecms/common)

[![Dependency Status](https://gemnasium.com/locomotivecms/common.png)](https://gemnasium.com/locomotivecms/common)

[![Build Status](https://travis-ci.org/locomotivecms/common.png?branch=master)](https://travis-ci.org/locomotivecms/common) (Travis CI)

[![Coverage Status](https://coveralls.io/repos/locomotivecms/common/badge.png)](https://coveralls.io/r/locomotivecms/common)

# Description

Common librairies for locomotive CMS Project

## Installation

Add this line to your application's Gemfile:

    gem 'locomotivecms_common'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install locomotivecms_common

## Configuration

    Locomotive::Common.configure do |config|
      config.notifier = Locomotive::Common::Logger.setup(File.join(File.expand_path(File.dirname(__FILE__)), 'log', 'locomotivecms.log'))
    end

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( http://github.com/<my-github-username>/locomotivecms_common/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
