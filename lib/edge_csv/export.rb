class Export
  include ExportHelper

  def initialize data
    @name = data['name'] || 'new_csv'
    @auto_send = data['auto_send'] || true
    @headers = data['headers'] || true
    @subjects = data['subjects'] || []
    @fields = data['fields'] || get_fields(@subjects[0])
    @sequence = data['sequence'] || []
  end

  def start
    puts("Started export #{@name}")
    if @auto_send
      send_data(collect_csv, :filename => "#{@name}.csv", :type => "text/csv")
    else
      collect_csv
    end
    puts("Completed export #{@name}")
  end

  private

  def collect_csv
    header = convert_headers(@fields, @headers)
    keys = sequences_headers(@sequence, @fields)
    CSV.generate(headers: true) do |csv|
      csv << header if @headers
      @subjects.each{ |subject| csv << keys.map{ |key| subject[key] } }
    end
  end


end