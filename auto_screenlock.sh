#power manager -> 
#system settings -> workspace behaviour -> screen locking

loginctl unlock-sessions 
systemctl unmask sleep.target

sudo nano /etc/systemd/logind.conf
# HandleSuspendKey=ignore 
# HandleLidSwitch=ignore
#IdleAction=ignore
#IdleActionSec=0 
sudo systemctl restart systemd-logind

nano ~/.bashrc
export TMOUT=0
source ~/.bashrc

sudo systemctl restart systemd-logind
sudo reboot

##ssh 
#sudo nano /etc/ssh/sshd_config
#ClientAliveInterval 0 
#ClientAliveCountMax 0
#sudo systemctl restart ssh 
#sudo reboot

