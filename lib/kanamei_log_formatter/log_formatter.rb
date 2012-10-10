#
#
# ■編集時の注意点
# バージョンを上げて(version.rb)新しいメソッド(formatter_N_N_N)を作って
# self.formatterの向き先を新しいメソッドに向ける
#
module Kanamei
  class LogFormatter

    # VERSION はversion.rbにて定義

    def self.formatter
      self.formatter_0_0_1
    end

    def self.formatter_0_0_1
      proc do |severity, datetime, progname, message|
        log = ""
        case message
        when Exception
          message = message.message + "\n" + message.backtrace.join("\n")
        when Numeric
          message = message.to_s
        end
        message.gsub!(/\r\n/,"\n")
        message.gsub!(/\r/,"\n")

        messages = message.split("\n")
        if messages.size > 1
          messages.each_with_index do |st,i|
            next if st == ""
            if i == 0
              log << "[#{datetime.strftime("%Y/%m/%d %H:%M:%S")}][#{$$}][#{severity}] #{st}\n"
            else
              log << "[#{severity}] #{st}\n"
            end
          end
        else
          if message != ""
            log << "[#{datetime.strftime("%Y/%m/%d %H:%M:%S")}][#{$$}][#{severity}] #{message}\n"
          end
        end
        log
      end
    end
  end
end
