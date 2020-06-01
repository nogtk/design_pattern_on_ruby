module Facade
  class HtmlWriter
    attr_reader :file_pointer
    def initialize(fp)
      @file_pointer = fp
    end

    def title(title)
      @file_pointer.puts("<html><head><title>#{title}</title></head><body>")
      @file_pointer.puts("<h1>#{title}</h1>")
    end

    def paragraph(msg)
      @file_pointer.puts("<p>#{msg}</p>")
    end

    def link(href, caption)
      paragraph("<a href=\"#{href}\">#{caption}</a>")
    end

    def mail_to(mail_addr, user_name)
      link("mailto:#{mail_addr}", user_name)
    end

    def close
      @file_pointer.puts("</body>")
      @file_pointer.puts("</html>")
    end
  end
end
