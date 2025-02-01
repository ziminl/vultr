#power manager -> 

#system settings -> workspace behaviour -> screen locking

loginctl unlock-sessions 
systemctl unmask sleep.target
