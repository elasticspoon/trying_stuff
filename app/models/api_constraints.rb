class APIConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    Rails.logger.debug { "Headers #{req.headers['Accept']}" }
    Rails.logger.debug { req.headers['Accept'].include?("application/vnd.example.v#{@version}") }
    Rails.logger.debug { "Default #{@default}" }
    Rails.logger.debug { inspect }
    req.headers['Accept'].include?("application/vnd.example.v#{@version}") || @default
  end
end
