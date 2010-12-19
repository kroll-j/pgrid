#!/usr/bin/expect -f

spawn gdb pgrid
send "run\r"

expect {
	-timeout 10000
	"KILL"				{send "quit\r"}
	"INT"				{interact}
	"signal"			{send "bt\r"; interact}
	"Program exited normally."	{send "quit\r"}
}

