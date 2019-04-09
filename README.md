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

Now if you are planning to include your own custom images which are not existing in your rails asset path and you are having some open source URLs of your images then pass those URLs in an array with the named parameter as mentioned below:

	<%= CustomLoader.setup_custom_loader_images(my_img_urls: ["URL1","URL2",....,"URLn"]).html_safe%>

This command will include all loader images on viewport . If you will not include this then all loaders images that are not existing in your assets folder will take time to render on first load. Now add the below line where ever you want to add the loader:

	CustomLoader.custom_loader(NAMED PARAMETERS).html_safe

The custom_loader method Named Parameters are described below:

	element_reference_name: Provide the HTML elements(div,span,etc) identifier where the loader needs to be appended, for example it can be an elements ID, Class or you can specify the HTML tags like: body, span, label, etc...

	reference_type: Here specify that what kind of identifier is your previous parameter(element_reference_name) , for example :- "id","class", for other cases you need not initialize this parameter.

	image_url: If you wish to use your own custom image, you can pass its URL here. You can use asset_path to provide assets image URL or can pass a open source web URL directly.

	loader_type: If you wish to use some custom loader images provided by us you can simply leave image_url parameter and specify the loader type to be rendered from the following sets of loaders: stream, circle, blob, blue_diameter, bouncing_balls, dna, gears1, gears2, pie_loader_cyan, snake_game, sand_clock, sliding_discs.

	content_position: Specify the position of text with respect to image in loader. It can be: "up", "down", "left", "right", "middle"

	content: Enter the text to be displayed with the loader, if nil then Loading will be displayed as default.
	
	text_color: Enter the text color to be displayed with the loader, if nil then black text will be displayed as default. If you want to customize the color but not the Default text then pass parameter 3 as nil .

Suppose you need to provide a loader in a div with id: "test_div" and want a stream Loader with text in golden color, so you can define loader as below example:
	
	CustomLoader.custom_loader(element_reference_name: "test_div", reference_type: "id", loader_type: "stream", text_color: "gold").html_safe

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/custom_loader. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CustomLoader project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/custom_loader/blob/master/CODE_OF_CONDUCT.md).
