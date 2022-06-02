class GraphsController < ApplicationController

  require "rinruby"

  def index
	
  end

  def get_data(xaxis, yaxis)
    #format data

    @array_x = ""
    @array_y = ""

    if(xaxis == "Murder")
     #@array_x = @murders
     @array_x = [1,0,1,0,0,0,0,0,15]
    elsif(xaxis == "Rape")
     #@array_x = @rapes
     @array_x = [1,4,20,3,1,10,0,1,70]
    elsif(xaxis == "Assault")
     #@array_x = @assaults
     @array_x = [10,36,54,2,6,24,0,9,552]
    elsif(xaxis == "School Populations")
      #@array_x = @school_populations
      @array_x = [5149,3452,11471,3493,3493,3762,3452,3767,14272]
    elsif(xaxis == "Math Scores")
      #@array_x = @math_scores
      @array_x = [3020,2012,6845,2012,2012,2201,2012,1996,6410]
    elsif(xaxis == "Lit Scores")
      #@array_x = @lit_scores
      @array_x = [3106,1967,6860,2100,2100,2230,1967,2116,6128]
    end

    if(yaxis == "Murder")
      #@array_y = @murders
      @array_y = [1,0,1,0,0,0,0,0,15]
    elsif(yaxis == "Rape")
      #@array_y = @rapes
      @array_y = [1,4,20,3,1,10,0,1,70]
    elsif(yaxis == "Assault")
      #@array_y = @assaults
      @array_y = [10,36,54,2,6,24,0,9,552]
    elsif(yaxis == "School Populations")
      #@array_y = @school_populations
      @array_y = [5149,3452,11471,3493,3493,3762,3452,3767,14272]
    elsif(yaxis == "Math Scores")
     # @array_y = @math_scores
      @array_y = [3020,2012,6845,2012,2012,2201,2012,1996,6410]
    elsif(yaxis == "Lit Scores")
     # @array_y = @lit_scores
      @array_y = [3106,1967,6860,2100,2100,2230,1967,2116,6128]
    end
      gen_graph(@array_x, @array_y,xaxis,yaxis)
  end

  def parse_data()

  end

  def gen_graph(x,y,labelX,labelY)
   # delete file if it exists to avoid extreme memory usage
   #File.delete(ENV["image_asset_path"]) if File.exist?(ENV["image_asset_path"])
   # data pre-loaded, to be fixed in the future
    t = ["East Windsor","Ewing","Hamilton","Highstown","Hopewell","Lawrence","Pennington","Princeton","Trenton"]
    # assign data to R side
    R.assign "xData", x
    R.assign "yData", y
    R.assign "townNames", t
    R.assign "labelX", labelX
    R.assign "labelY", labelY
    # get env variables 
    R.assign "img_path", ENV["image_asset_path"]
    R.assign "path", ENV["abs_r_path"]
    # eval R path
    R.eval "source(path)"
  end


  def graph_maker()
    @xaxis_button = params[:xaxis]
    @yaxis_button = params[:yaxis]
    
   
    

    #@xaxis_crime = params[:xaxis_crime]
    @xaxis_crime = params[:xaxis_crime]
    @xaxis_education = params[:xaxis_education]
    @yaxis_crime = params[:yaxis_crime]
    @yaxis_education = params[:yaxis_education]
    #puts "DROPDOWN"
    #puts @xaxis_crime
    #puts @xaxis_education
    #puts @yaxis_crime
    #puts @yaxis_education

    @xaxis = ""
    @yaxis = ""

    if (@xaxis_button == "Crime")
	@xaxis = @xaxis_crime
    end
    if (@xaxis_button == "Education")
	@xaxis = @xaxis_education
    end
    if (@yaxis_button == "Crime")
	@yaxis = @yaxis_crime
    end
    if (@yaxis_button == "Education")
	@yaxis = @yaxis_education
    end

    #puts "FINAL"
    #puts @xaxis
    #puts @yaxis

    get_data(@xaxis, @yaxis)

  end

end
