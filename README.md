# eng110_devops
![DevOps Pipeline](./images/Devops-toolchain.svg)
## What is DevOps?

DevOps is the process of continuously developing, integrating and deploying software by bridging the gap between traditional development and operations teams. DevOps engineers are responsible for solving problems in the software development lifecycle - generally through automating the processes of running tests, reporting problems and deploying code.

## Why DevOps?

Catching problems before they become a major problem is a massive economic advantage - whereas traditionally it might be unclear whether a bug occurred in the development or operations stage, using DevOps it can be dealt with almost immediately after it occurs, and thus software is deployed and integrated more frequently. DevOps also encourages greater collaboration across the business on the software lifecycle.

## Benefits of DevOps

- Collaboration
- Efficient deployment
- Optimisation of software development
- Improve the business value

## Four Pillars of DevOps

- Ease of use
- Flexible
- Robust
- Cost-effective

## Work done on 19/04/2022
- Installed vagrant, virtualbox and Ruby
- Manually created Git repository
- Started running a virtual machine by running vagrant up, checked it with vagrant status, and entered the machine with the vagrant ssh command.
- Learnt how to reset commits.

### Linux - Ubuntu distro
- update `sudo apt-get update -y`
- upgrade `sudo apt-get upgrade -y`
- Who am I `uname` or `uname -a`
- Where am I `pwd`
- How to check files/folders in existing location `ls`
- How to create dir `mkdir dir_name`
- To navigate to a folder `cd folder_name`
- To change to the parent folder `cd ..` or `cd` enter
- How to create a file `touch file_name` or `nano file_name`
- To see the content of a file on a terminal `cat file_name`
- To copy file `cp location_file_name to destination_path`
- Cut and paste `mv`
- To delete `rm -rf folder_name`
- How to check running process in Linux `top` or `ps aux`
- How to delete/kill/remove any process `kill pid`

#### Task
- Create a folder called test in the current location
- Cut and paste the file inside the test folder from the current location

### Permissions
- How to check permissions
- How to switch to 'root user' `sudo su`
- How to change permissions `chmod instruction file_name`


### Timeout
- To run a process for a given time `timeout DURATION COMMAND`
- `sleep` will exit after the time has completed

### Installing a product
- How to install a product - install webserver called `nginx`
- `sudo apt-get install package_name`
- How to check the status - `systemctl status nginx`

### Automating the installation of a product
- Make sure that there are no virtual machines in your location.
- Create a `provisioning.sh` file.
- Add the following commands to the file:
-- `#!/bin/bash` (This is very important, as it tells vagrant that this is a provisioning shell file"
-- `sudo apt-get update -y` # run updates
-- `sudo apt-get upgrade -y` # run upgrade
-- `sudo apt-get install nginx -y` # install nginx
-- `sudo systemctl start nginx` #start nginx
-- `sudo systemctl enable nginx` #enable nginx
- Update your vagrantfile with the following command:
`config.vm.provision "shell", path: "provisioning.sh"`
- Now if you run `vagrant up`, provisioning.sh should execute, thus the VM will automatically:
-- update & upgrade;
-- install the package nginx.