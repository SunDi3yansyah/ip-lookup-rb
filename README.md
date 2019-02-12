# Ip::Lookup

[![Build Status](https://travis-ci.com/SunDi3yansyah/ip-lookup-rb.svg)](https://travis-ci.com/SunDi3yansyah/ip-lookup-rb)
[![License](https://img.shields.io/github/license/SunDi3yansyah/ip-lookup-rb.svg)](LICENSE)
[![Gem Version](https://badge.fury.io/rb/ip-lookup.svg)](https://badge.fury.io/rb/ip-lookup)
[![GitHub last commit](https://img.shields.io/github/last-commit/SunDi3yansyah/ip-lookup-rb.svg)](https://github.com/SunDi3yansyah/ip-lookup-rb/commits/master)
[![GitHub issues](https://img.shields.io/github/issues/SunDi3yansyah/ip-lookup-rb.svg)](https://github.com/SunDi3yansyah/ip-lookup-rb/issues)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ip-lookup'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install ip-lookup
```

## Usage

```
irb(main):001:0> Ip::Lookup.server_whatismyipaddress
=> "36.72.215.137"
```

```
irb(main):001:0> Ip::Lookup.cli
+-------------+---------------------------------------+
| String      | Value                                 |
+-------------+---------------------------------------+
| Network     | AS17974 Telekomunikasi Indonesia (PT) |
| City        | Yogyakarta                            |
| Country     | Indonesia                             |
| CountryCode | ID                                    |
| Isp         | PT. TELKOM INDONESIA                  |
| Lat         | -7.8014                               |
| Lon         | 110.3647                              |
| Org         |                                       |
| IP Address  | 36.72.215.137                         |
| Region      | YO                                    |
| RegionName  | Yogyakarta                            |
| Timezone    | Asia/Jakarta                          |
| Zip         |                                       |
+-------------+---------------------------------------+
=> nil
```

```
irb(main):001:0> Ip::Lookup.cli table: false
=> {"as"=>"AS17974 Telekomunikasi Indonesia (PT)", "city"=>"Yogyakarta", "country"=>"Indonesia", "countryCode"=>"ID", "isp"=>"PT. TELKOM INDONESIA", "lat"=>-7.8014, "lon"=>110.3647, "org"=>"", "query"=>"36.72.215.137", "region"=>"YO", "regionName"=>"Yogyakarta", "status"=>"success", "timezone"=>"Asia/Jakarta", "zip"=>""}
```

```
irb(main):001:0> Ip::Lookup.get :as
=> "AS17974 Telekomunikasi Indonesia (PT)"
```

List of parameter for `get`
```
as
city
country
countryCode
isp
lat
lon
org
query
region
regionName
timezone
zip
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SunDi3yansyah/ip-lookup-rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](LICENSE).

## Code of Conduct

Everyone interacting in the Ip::Lookup project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/SunDi3yansyah/ip-lookup-rb/blob/master/CODE_OF_CONDUCT.md).
