require 'edge_csv/export'
class EdgeCsv

  def self.import
    puts "Started Importing"
    puts "Params are: "
  end

  def self.export data
    Export.new(data).start
  end

end
