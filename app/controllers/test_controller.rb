class TestController < ApplicationController
  # skip_before_action :authenticate_user!
  require "rinruby"
 
  def index
   puts(ENV["img_path"])
  end

  def gen_graph()
    puts ("gen_graph called!")
    data = Array.new(10) { rand(1..9) }
    # image_path = ENV["application_path"] + '/rplot.png'
    #r_path = ENV["application_path"]+'/app/assets/images/corr_plot_in_ruby.r'
    File.delete(ENV["image_asset_path"]) if File.exist?(ENV["image_asset_path"])
    R.assign "data", data
    R.assign "img_path", ENV["image_asset_path"]
    R.assign "path", ENV["abs_r_path"]
    R.eval "source(path)"
end
end

#../assets/images/corr_plot_in_ruby.r
