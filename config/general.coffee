###
  This is where you setup essential BlackSam's behaviour, namely file storage
  paths and some web-facing settings.
###
module.exports = (nil, config) ->
  # HTTP Port
  # This is the port BlackSam will use for incoming HTTP.
  # NOTE 1: This is overridden if running "node server.js -p <PORT>"
  # NOTE 2: If this is commented process.env.PORT will be used
  #config.set 'http port', 80

  # Session Secret
  # User for "signing" session cookies
  config.set 'session secret', 'REPLACE THIS BEFORE STARTNG'

  # Max file Size
  # Any file can never exceed this size. Any files exceeding this are
  # discarded, deleted or ignored (depending on the case). In bytes.
  config.set 'max file size', 1024 * 1024 * 1024 #1mb

  # Path to the "marianne" directory
  # All user directories and torrents are stored here
  config.set 'marianne path', "#{__dirname}/../marianne"

  # Path to the "sherlock" directory
  # Search Index files are stored here
  config.set 'sherlock path', "#{__dirname}/../sherlock"

  # Path to the "sultanna" directory
  # Temporary files are stored here
  config.set 'sultanna path', "#{__dirname}/../sultanna"