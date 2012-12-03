$message = @ARGV[0];
print substr($message, 0, 1);

$remainder = substr($message, 1, length($message)-1);
if (!$remainder eq "") {
  $cmd = "ruby echo.rb '" . $remainder . "'";
  exec($cmd);
}
else {
  print "\n";
}
