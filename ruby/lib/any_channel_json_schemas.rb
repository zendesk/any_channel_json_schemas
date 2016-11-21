require 'json'

# The AnyChannelJSONSchemas module exposes a single method for each json schema file in the json_schemas directory.
# Each method returns the full file path as a string.
#
# eg.
#   AnyChannelJSONSchemas.manifest
#   => "<full_file_path_to_gem>/manifest.json"
module AnyChannelJSONSchemas
  PATH = File.dirname(File.expand_path(__FILE__)) + "/../json_schemas"
  SCHEMA_FILES = Dir[PATH + "/*"]

  SCHEMA_FILES.each do |file_path|
    basename  = File.basename(file_path, '.json')

    define_method(basename) do
      file_path
    end
    module_function basename.to_sym
  end

  def documentation(schema = 'all')
    output = ''

    if schema == 'all'
      SCHEMA_FILES.each do |file_path|
        output << format_output(file_path)
      end
    elsif SCHEMA_FILES.map { |f| File.basename(f, '.json') }.include?(schema.to_s)
      file_path = PATH + '/' + schema + '.json'

      output << format_output(file_path)
    else
      raise "No schema file with the name: #{schema}"
    end

    output.chomp
  end
  module_function :documentation

  def format_output(file_path)
    output = ''

    json = JSON.parse(File.read(file_path))
    description = json.delete('description')
    json_output = JSON.pretty_generate(json).split("\n").map { |p| "\s\s#{p}" }.join("\n")

    output << "method_name: #{File.basename(file_path, '.json')}\n"
    output << "description: #{description}\n"
    output << "schema:\n"
    output << "#{json_output}\n\n"

    output
  end
  module_function :format_output
end
