require "test_helper"

module Kamisaku
  class TempPdfTest < Minitest::Test
    def setup
      @valid_resume_yml_str = fixture_file("resume_example.yml")
      @valid_resume_hash = Kamisaku::Helpers.yaml_str_to_content_hash(@valid_resume_yml_str)
    end

    def test_pdf_initialize_with_valid_data
      pdf = Kamisaku::PDF.new(
        content_hash: @valid_resume_hash,
        category: :resume,
        template: :paper
      )

      assert_instance_of(Kamisaku::PDF, pdf)
    end

    def test_pdf_initialize_with_invalid_hash_data
      error = assert_raises(Kamisaku::Error) do
        Kamisaku::PDF.new(
          content_hash: {missing_fields: true},
          category: :resume,
          template: :paper
        )
      end

      assert_equal("Invalid version", error.message)
    end

    def test_invalid_category_name
      error = assert_raises(Kamisaku::Error) do
        Kamisaku::PDF.new(
          content_hash: @valid_resume_hash,
          category: :invalid_category,
          template: :paper
        )
      end

      assert_equal("Invalid category 'invalid_category'", error.message)
    end

    def test_invalid_template_name
      error = assert_raises(Kamisaku::Error) do
        Kamisaku::PDF.new(
          content_hash: @valid_resume_hash,
          category: :resume,
          template: :invalid_name
        )
      end

      assert_equal("Invalid template 'invalid_name'", error.message)
    end
  end
end
