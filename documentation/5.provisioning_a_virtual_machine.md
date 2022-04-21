# Provisioning 
This allows a developer to automate the process of starting the virtual machine and installing packages.

## Automating the installation of a product
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