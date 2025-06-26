# Process Control

### Important process signals

Names are derived from the C language.

| #  | Name  | Description        | Default Action | Can catch? | Can block? | Dump core? |
|----|-------|--------------------|----------------|------------|------------|------------|
| 1  | HUP   | Hangup             | Terminate      | Yes        | Yes        | No         |
| 2  | INT   | Interrupt          | Terminate      | Yes        | Yes        | No         |
| 3  | QUIT  | Quit               | Terminate      | Yes        | Yes        | Yes        |
| 9  | KILL  | Kill               | Terminate      | No         | No         | No         |
| 10 | BUS   | Bus error          | Terminate      | Yes        | Yes        | Yes        |
| 11 | SEGV  | Segmentation fault | Terminate      | Yes        | Yes        | Yes        |
| 15 | TERM  | Software termination | Terminate    | Yes        | Yes        | No         |
| 17 | STOP  | Stop               | Stop           | No         | Yes        | No         |
| 18 | TSTP  | Keyboard stop      | Stop           | Yes        | No         | No         |
| 19 | CONT  | Continue after stop| Ignore         | Yes        | Yes        | No         |
| 28 | WINCH | Window changed     | Ignore         | Yes        | No         | No         |
| 30 | USR1  | User-defined #1    | Terminate      | Yes        | Yes        | No         |
| 31 | USR2  | User-defined #2    | Terminate      | Yes        | Yes        | No         |

### Killing processes

```bash
# List all avaialble signals

kill -l

# Kill a process specifying the signal
# kill [-signal] [pid]

kill -SIGINT 9887
kill -9 452 # Sends KILL signal 

# Kill by specfiyng process name or other attribute

# pkill [-signal] process_name
# pkill -u user user_processes
# pkill [process_name]
# pkill -u [process_user]

pkill httpd

# Sends SIGTERM to all processes owned by andre
pkill -u andre 

# Kills firefox processes owned by andre
pkill -u andre firefox 
```
