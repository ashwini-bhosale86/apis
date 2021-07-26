# Apis

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/apis`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apis'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install apis

## Usage

TODO: 
This gem is perticulary used to deal with the request-responses in case of Nowcerts(this will provide agents list, policies, claims by customer)

Nowecerts related apis are stored nowcerts.rb file, to use the apis, there are some methods available,
For every api, token is must, so need to authorize the user using

`Apis::Responses.authorize('post', url,{ grant_type: 'password', username: 'user_name', password: 'password',client_id: 'ngAuthApp' })`
This will give access_token, which will be used for rest of the methods.

`Nowcerts::policies_list(method_type, url, header, access_token)` - This is used to get the policies list.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

If there are any changes in code, there is need to build gemspec file using below command,

`gem build apis.gemspec 
`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/apis. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/apis/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Apis project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/apis/blob/master/CODE_OF_CONDUCT.md).

