module Minitest
  class Test
    def fixture_file(file_path)
      File.read(File.join(File.dirname(__FILE__), "..", "fixtures", file_path))
    end
  end
end
