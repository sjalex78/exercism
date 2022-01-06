class LogLineParser
  def initialize(line)
    @line = line.gsub(/\r/,'').strip
    @matches = @line.match(/\[(.*)\]\:\s+(.*)/)
  end

  def message
    @matches[2]
  end

  def log_level
    @matches[1].downcase
  end

  def reformat
    message.concat(" (#{log_level})")
  end
end
