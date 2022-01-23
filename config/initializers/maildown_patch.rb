# https://github.com/codetriage/maildown/issues/59
#
# extract_handler_and_format_and_variant was removed in https://github.com/rails/rails/commit/2be8d3ebf85e26e936a7717b968737ee333d95bd
# OptimizedFileSystemResolver was removed in https://github.com/rails/rails/commit/faac734387124c6d780dbfcfdab721b2f26ce865
module ActionView
  class OptimizedFileSystemResolver < FileSystemResolver
    def extract_handler_and_format_and_variant(template)
      details = @path_parser.parse(template)
      [details.handler, details.format, details.variant]
    end
  end
end
