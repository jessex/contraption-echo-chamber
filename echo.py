import os, sys

message = sys.argv[1]
sys.stdout.write(message[0])
sys.stdout.flush()

remainder = message[1:len(message)]
if remainder:
  os.execl("/usr/bin/perl", "perl", "echo.pl", remainder)
else:
  print ""
