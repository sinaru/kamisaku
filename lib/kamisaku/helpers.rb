require "psych"

module Kamisaku
  module Helpers
    def self.yaml_str_to_content_hash(yaml_str)
      result = Psych.safe_load(yaml_str, symbolize_names: true, aliases: false, freeze: true)
      raise Kamisaku::Error, "Unable to parse yaml content" unless result.is_a?(Hash)
      result
    rescue Psych::SyntaxError => error
      raise Kamisaku::Error, "Syntax error at line #{error.line}"
    rescue Psych::AliasesNotEnabled => _error
      raise Kamisaku::Error, "Aliases are not enabled in yaml text"
    rescue Psych::DisallowedClass
      raise Kamisaku::Error, error.message
    end

    def self.remove_metadata_from_pdf_file(file_path)
      system("exiftool", "-all=", file_path, "-overwrite_original")
    end
  end
end
