require "test_helper"

module Kamisaku
  class HelpersTest < Minitest::Test
    def test_yaml_string_to_hash_on_invalid_content
      yaml_str = <<~YAML
        about: >
        invalid text
            ok text
      YAML
      error = assert_raises(Kamisaku::Error) do
        Kamisaku::Helpers.yaml_str_to_content_hash(yaml_str)
      end

      assert_equal "Syntax error at line 2", error.message
    end

    def test_alias_in_yaml_content
      yaml_str = <<~YAML
        default_settings: &default_settings
          timeout: 30
          retries: 3
          log_level: info
        
        development:
          <<: *default_settings
          database: dev_db
          debug: true
      YAML

      error = assert_raises(Kamisaku::Error) do
        Kamisaku::Helpers.yaml_str_to_content_hash(yaml_str)
      end

      assert_equal "Aliases are not enabled in yaml text", error.message
    end
  end
end
