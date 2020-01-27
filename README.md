## A container for executing Ansible without installing it

# Updates
### 2020/01/27
- First release

# Features

- It's configured to read the hosts file at **/root/hosts** which should be mounted to your working dir.


# Mounting points
- **/root** -> your working dir

#  Tags
|Tag|Ubuntu Version|
| ------------ | ------------ |
|[latest](https://github.com/jairbj/docker-ansible/blob/master/Dockerfile/latest/Dockerfile "latest")|Bionic|


# Usage examples
##### Login to Ansible container
```` Powershell
docker run --rm -it -v "C:\ansible:/root" jairbj/ansible:latest
````
##### Run an ansible command
```` Powershell
docker run --rm -it -v "C:\ansible:/root" jairbj/ansible:latest ansible all -m ping
````

# Bonus
##### Powershell Shortcuts
You'll find at ps1Shortcuts folder some PowerShell scripts that forwards commands to the container and print the result.  
You'll find one .ps1 file for each Ansible executable available in the container.  
You'll also find the ansible-container.ps1 which opens the ansible container for manually run commands.

##### Examples
````
.\ansible.ps1 all -m ping
````
````
.\ansible-inventory.ps1 --list
````