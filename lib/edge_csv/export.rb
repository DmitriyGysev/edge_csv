class Export
  include ExportHelper

  def initialize data
    @name = data['name'] || 'new_csv'
    @headers = data['headers'] || true
    @subjects = data['subjects'] || []
    @fields = data['fields'] || get_fields(@subjects[0])
    @sequince = data['sequince'] || []
  end

  def start
    puts("Started export #{@name}")
    send_data(collect_csv, :filename => "#{@name}.csv", :type => "text/csv")
    puts(collect_csv)
  end

  private

  def collect_csv
    sequinces_headers
    header = convert_headers(@fields)
    csv = CSV.generate(headers: true) do |csv|
      csv << header if @headers
        @subjects.each do |subject|
          csv << [

          ]
        end
    end
    csv
  end


end