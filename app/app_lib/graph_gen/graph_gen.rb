# Class Graph_Test
#     def initialize(data)
#         data = @data
#     end
require "rinruby"
    def gen_graph(data)
        puts ("gen_graph called!")
        File.delete('rplot.jpg') if File.exist?('rplot.jpg')
        R.assign "data", data
        R.eval "source('corr_plot_in_r.r')"
    end
# end
