# List of basic commands for CS191

# Entering the 3 main modes of the shell

# User exec is the default mode. E.g.
switch> 

# You can access more commands by switching to privileged exec mode
switch> enable
switch#

# You can access even more commands by switching to global config mode
switch# configure terminal
switch(config)#
# This can be abbreviated to
switch# conf t
switch(config)#

# To exit from any mode, use the exit command
switch(config)# exit
switch# exit
switch>

# Saving the configuration
# The configuration is saved to the startup-config file
# The startup-config file is loaded when the switch is powered on, any changes made can be saved to the startup-config file
# EXAMPLE

switch>
switch> enable
switch# copy running-config startup-config
Destination filename [startup-config]?
Building configuration...
[OK]
switch#

# To view the startup-config file
switch> enable
switch# show startup-config
Building configuration...
# startup-config will be displayed here
switch#

# Setting a password for the console 
# The console is the terminal that you are using to access the switch
# EXAMPLE
switch>
switch> enable
switch# configure terminal
switch(config)# line console 0
switch(config-line)# password cisco
switch(config-line)# login
switch(config-line)# exit
switch(config)# exit
switch# exit
switch>
# Now when a user tries to access the switch, they will be prompted for a password 

# We can also set a password for the privileged exec mode
# EXAMPLE
switch>
switch> enable
switch# configure terminal
switch(config)# enable password class
switch(config)# exit
switch# exit
switch>
# Now when a user tries to access the privileged exec mode, they will be prompted for a password

# Setting a banner for the console
# EXAMPLE
switch>
switch> enable
switch# configure terminal
switch(config)# banner motd "Unauthorized access is prohibited"
switch(config)# exit
switch# exit
switch>
# Now when a user tries to access the switch, they will be prompted for a password and the banner will be displayed

# Setting a hostname
# EXAMPLE
switch>
switch> enable
switch# configure terminal
switch(config)# hostname switch1
switch1(config)# exit
switch1# exit

# Encrypting the startup-config file
# EXAMPLE
switch>
switch> enable
switch# configure terminal
switch(config)# service password-encryption
switch(config)# exit
switch# exit
switch>

# Configuring the IP and subnet mask of the switch
# EXAMPLE
switch>
switch> enable
switch# configure terminal
switch(config)# interface vlan 1
switch(config-if)# ip address 192.168.100.11 255.255.255.0
switch(config-if)# no shutdown
switch(config-if)# exit
switch(config)# exit
switch# exit
switch>
# We can verify the changes by using the following
switch> enable
switch# show int vlan 1
switch# exit
switch>