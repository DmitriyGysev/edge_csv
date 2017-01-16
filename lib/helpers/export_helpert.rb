module ExportHelper

  def get_fields instance
    instance = instance.attributes if instance.class != 'Hash'
    internal_headers = instance.keys
    internal_headers
  end

  def convert_headers(fields, headers)
    fields.map{ |field| field.sub!('_', ' ').split(' ').map(&:capitalize).join(' ') }
    headers.each do |initial, new|

    end
  end

  def sequences_headers(sequence, fields)
    keys = sequence
    keys << fields - sequence
    keys.flatten
  end

end
