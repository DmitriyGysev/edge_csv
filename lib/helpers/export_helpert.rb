module ExportHelper

  def get_fields instance
    instance = instance.attributes if instance.class != 'Hash'
    internal_headers = instance.keys
    internal_headers
  end

  def convert_headers(headers)
    headers.map{ |field| field.sub!('_', ' ').split(' ').map(&:capitalize).join(' ') }
  end

end
