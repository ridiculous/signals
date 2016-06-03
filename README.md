# Signals

Example of hot reloading a Ruby class from another process.

This application just calls `Player.new.run` in a loop, whose default behavior is to print out the current process ID. However, it 
also listens for the SIGUSR2 signal and will reload the `Player` class when it's received.

Start looping:

```bash
ruby runner.rb
```

Now edit the `#run` method in [player.rb](player.rb) and save it. Afterwards, tell the original process to pick up the change:

```bash
kill -s SIGUSR2 <PID>
```

# Try it out!

Just clone it and cd to the signals directory

```bash
git clone git@github.com:ridiculous/signals.git
```
