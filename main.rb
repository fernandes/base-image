require "awesome_print"

$stdout.sync = true

ap({
  foo: "foooooo",
  bar: ENV["BAR"]
})

counter = 0
while true
  ap "[#{Time.now}] counter: #{counter}"
  sleep 1
  counter += 1
end
