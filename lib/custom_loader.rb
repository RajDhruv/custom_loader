require "custom_loader/version"

module CustomLoader
  class Error < StandardError; end
  def self.custom_loader(element_reference_name: nil, reference_type: nil, image_url: nil, loader_type: nil, content_position: nil, content: nil, text_color: nil)
	loader_label=''
	content||="Loading"
	text_color||=""
	content_position||="down"
	loader_type||="bouncing_balls"
	reference_type||="id"
	element_reference_name||=""
	image_url||=""
	if image_url.empty?
		image_path="https://raw.githubusercontent.com/RajDhruv/hubCafe/master/app/assets/images/custom_loader"
		case loader_type
		when "stream"
			image_url="#{image_path}/stream_loader.gif"
		when "circle"
			image_url="#{image_path}/circle_loader.gif"
		when "blob"
			image_url="#{image_path}/blob.gif"
		when "blue_diameter"
			image_url="#{image_path}/blue_diameter.gif"
		when "bouncing_balls"
			image_url="#{image_path}/bouncing_balls.gif"
		when "dna"
			image_url="#{image_path}/dna.gif"
		when "gears1"
			image_url="#{image_path}/gears1.gif"
		when "gears2"
			image_url="#{image_path}/gears2.gif"
		when "pie_loader_cyan"
			image_url="#{image_path}/pie_loader_cyan.gif"
		when "snake_game"
			image_url="#{image_path}/snake_game.gif"
		when "sand_clock"
			image_url="#{image_path}/sand_clock.gif"
		when "sliding_discs"
			image_url="#{image_path}/sliding_discs.gif"
		end
	end
	if content_position=="up"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div>"+content+"</div><div><img src=\'#{image_url}\' alt=\'...\' width=\'50\'/></div></center>"
	elsif content_position=="down"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_url}\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif content_position=="left"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><table><tr><td align=\'center\'>"+content+"</td><td align=\'center\'><img src=\'#{image_url}\' alt=\'...\' width=\'50\'/></td></tr></table></center>"
	elsif content_position=="right"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><table><tr><td align=\'center\'><img src=\'#{image_url}\' alt=\'...\' width=\'50\'/></td><td align=\'center\'>"+content+"</td></tr></table></center>"
	elsif content_position=="middle"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><table><tr><td align=\'center\'><img src=\'#{image_url}\' alt=\'...\' width=\'50\'/></td><td align=\'center\'>"+content+"</td><td align=\'center\'><img src=\'#{image_url}\' alt=\'...\' width=\'50\'/></td></tr></table></center>"
	end	
	return_string=""
	if reference_type=="id"
		return_string="$(\"#"+element_reference_name+"\").html(\""+loader_label+"\")"
	elsif reference_type=="class"
		return_string="$(\"."+element_reference_name+"\").html(\""+loader_label+"\")"
	else
		return_string="$(\""+element_reference_name+"\").html(\""+loader_label+"\")"
	end
	return_string
  end

  def self.setup_custom_loader_images(my_img_urls: [])
  	loader_label_img=''
	image_path="https://raw.githubusercontent.com/RajDhruv/hubCafe/master/app/assets/images/custom_loader"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/stream_loader.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/circle_loader.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/blob.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/blue_diameter.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/bouncing_balls.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/dna.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/gears1.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/gears2.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/pie_loader_cyan.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/snake_game.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/sand_clock.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img=loader_label_img+"<img src=\'#{image_path}/sliding_discs.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		my_img_urls.each do |url|
			loader_label_img=loader_label_img+"<img src=\'#{url}\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		end
		loader_label_img
  end
end
