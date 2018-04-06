# require 'logger'

# # logger = Logger.new(STDERR)

# # logger = Logger.new('mylogfile.log', 'daily')
# # logger = Logger.new('mylogfile.log', 'weekly')
# # logger = Logger.new('mylogfile.log', 'monthly')

# logger = Logger.new('mylogfile.log', 10, 100000)

# logger.sev_threshold = Logger::FATAL
# # logger.sev_threshold = Logger::DEBUG

# # logger = Logger.new('/tmp/some_log_file.log')

#-------------------------

require 'logger'
# logger = Logger.new('mylogfile.log')
logger = Logger.new(STDOUT)

logger.debug ("myprog") {"test228"}
logger.add(Logger::FATAL){"message here"}
logger.info "test"
logger.fatal "test"

logger.close

