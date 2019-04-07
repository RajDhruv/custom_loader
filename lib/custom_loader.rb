require "custom_loader/version"

module CustomLoader
  class Error < StandardError; end
  def self.custom_loader(div_id,loader_type,content=nil,text_color=nil)
	loader_label=''
	if content.nil?
		content="Loading"
	end
	if text_color.nil?
		text_color=""
	end
	image_path="https://raw.githubusercontent.com/RajDhruv/hubCafe/master/app/assets/images/custom_loader"
	if loader_type=="stream"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'>"+content+"&nbsp;<img src=\'#{image_path}/stream_loader.gif\' alt=\'...\' width=\'50\'/></center>"
	elsif loader_type=="circle"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/circle_loader.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="blob"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/blob.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="blue_diameter"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/blue_diameter.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="bouncing_balls"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/bouncing_balls.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="dna"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/dna.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="gears1"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/gears1.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="gears2"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/gears2.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="pie_loader_cyan"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/pie_loader_cyan.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="snake_game"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/snake_game.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="sand_clock_up"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/sand_clock.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="sliding_discs_up"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><div><img src=\'#{image_path}/sliding_discs.gif\' alt=\'...\' width=\'50\'/></div><div>"+content+"</div></center>"
	elsif loader_type=="sand_clock"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><table><tr><td align=\'center\'><img src=\'#{image_path}/sand_clock.gif\' alt=\'...\' width=\'50\'/></td><td align=\'center\'>"+content+"</td></tr></table></center>"
	elsif loader_type=="sliding_discs"
		loader_label=loader_label+"<center style=\'margin-top:20px;color:"+text_color+"\'><table><tr><td align=\'center\'><img src=\'#{image_path}/sliding_discs.gif\' alt=\'...\' width=\'50\'/></td><td align=\'center\'>"+content+"</td><td align=\'center\'><img src=\'#{image_path}/sliding_discs.gif\' alt=\'...\' width=\'50\'/></td></tr></table></center>"
	end
	"$(\"#"+div_id+"\").html(\""+loader_label+"\")"
  end

  def self.setup_custom_loader_images()
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

		loader_label_img=loader_label_img+"<img src=\'#{image_path}/sand_clock.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"

		loader_label_img=loader_label_img+"<img src=\'#{image_path}/sliding_discs.gif\' alt=\'...\' width=\'50\' style=\'display:none;\'/>"
		loader_label_img
  end
end
