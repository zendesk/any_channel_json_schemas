# The AnyChannelJSONSchemas module exposes a single method for each json schema file in the json_schemas directory.
# Each method returns the full file path as a string.
#
# eg.
#   AnyChannelJSONSchemas.manifest
#   => "<full_file_path_to_gem>/manifest.json"
module AnyChannelJSONSchemas
  Dir["#{File.dirname(File.expand_path(__FILE__))}/../json_schemas/*.json"].each do |file_path|
    basename  = File.basename(file_path, '.json')

    define_method(basename) do
      file_path
    end
    module_function basename.to_sym
  end
end
