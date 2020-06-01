require_relative 'database'
require_relative 'html_writer'

module Facade
  class PageMaker
    def self.make_welcome_page(mail_addr, file_name)
      user_name = Database.properties('mail_data')[mail_addr]
      File.open(file_name, 'w') do |f|
        writer = HtmlWriter.new(f)
        writer.title("Welcome to #{user_name}'s page!")
        writer.paragraph("#{user_name}のページへようこそ。")
        writer.paragraph('メールを待っていますね。')
        writer.mail_to(mail_addr, user_name)
        writer.close
      end
    end
  end
end
