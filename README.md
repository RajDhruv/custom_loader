# CustomLoader


Custom Loader provides the end user to add various set of customizable loaders to be rendered and displayed in view at certian requirements such as page transitions, transition period between request and response cycle, etc.

## Installation

Add this line to your application's Gemfile:


	gem 'custom_loader'


And then execute:

    $ bundle

Or install it yourself as:

    $ gem install custom_loader

## Usage

I would suggest including the below line in application.html layout but you can include in any parent image that is being rendered first in your situation

	<%= CustomLoader.setup_custom_loader_images.html_safe%>

This command will include all loader images on viewport . If you will not include this then all loaders images will take time to render on first load. Now add the below line where ever you want to add the loader:

	CustomLoader.custom_loader('main-timeline','blue_diameter','Edit Profile','gold').html_safe

The custom_loader method is in below format:
parameter 1: provide the HTML elements(div,span,etc) ID where the loader needs to be appended.
parameter 2: specify the loader type to be rendered from the following sets of loaders: stream, circle, blob, blue_diameter, bouncing_balls, dna, gears1, gears2, pie_loader_cyan, snake_game, sand_clock_up, sliding_discs_up, sand_clock, sliding_discs. 
parameter 3: Enter the text to be displayed with the loader, if nil then Loading will be displayed as default.
parameter 4: Enter the text color to be displayed with the loader, if nil then black text will be displayed as default. If you want to customize the color but not the Default text then pass parameter 3 as nil .


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/custom_loader. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CustomLoader project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/custom_loader/blob/master/CODE_OF_CONDUCT.md).
