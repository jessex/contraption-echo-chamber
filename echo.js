var kexec = require('kexec');

message = process.argv[2];
process.stdout.write(message.charAt(0));

remainder = message.substr(1, message.length-1);
if (remainder) {
  kexec("python echo.py '"+remainder+"'");
} else {
  console.log();
}
