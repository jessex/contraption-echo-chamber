message = ARGV[0]
print message[0]

remainder = message[1..-1]
if !remainder.empty?
  exec("node echo.js '#{remainder}'")
else
  puts ""
end
