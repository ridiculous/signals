require File.expand_path('../player', __FILE__)

Signal.trap('SIGUSR2') do
  load File.expand_path('../player.rb', __FILE__)
end

module Runner
  def self.go
    Player.new.run
  end
end

while true
  Runner.go
  sleep 2
end

