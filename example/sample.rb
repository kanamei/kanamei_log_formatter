
require 'kanamei_log_formatter'
require 'logger'

logger = Logger.new(STDOUT)
logger.info('test')
logger.formatter = Kanamei::LogFormatter.formatter
logger.info('info message')
logger.warn('warn message')
begin
  raise 'exex'
rescue => e
  logger.error e
end
