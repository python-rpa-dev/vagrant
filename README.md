# vagrant
Vagrant setup to generate a sandboxed test platform.

Why do you need to do this? 
If you do not want to run the RPA client on your main desktop, this will
make sure that it is sandboxed in its own environment.

Setup
1. Install VirtualBox from https://www.virtualbox.org/
   * Go to *Downloads* and choose the appropriate platform package
   * Also download *Virtual Extension Package*
   * Run the setup and consult the documenation if necessary

2. Install vagrant from https://www.vagrantup.com/downloads
   * Make sure you have selected the downloads for your platform
   * Download the install files
   * Run the setup and consult the documenation if necessary

3. Spin up the sandboxed test platform
   * If everything went well, open a cmd.exe or any other console application and type

```
vagrant help
```

   This should return something like    

```
    Usage: vagrant [options] <command> [<args>]

    -h, --help                       Print this help.
```

   * Create a directory where you want to store the setup scripts and credentials. This is just an example (in Windows 10):   

```
md C:\vms\vagrant
cd C:\vms\vagrant
```

4. Create sandbox

   * Clone this repository

```
git clone https://github.com/python-rpa-dev/vagrant.git sandbox
cd sandbox
```    

   * Launch vagrant 
   
```   
vagrant up
```    

   If everything went well, you should have a working virtual machine with a linux desktop after a few minutes, *ymmv*

   * Test if you can connect to the vm command line

```
vagrant ssh
```    

   * Open the app *Oracle VM VirtualBox* from your Desktop and use it to display the VMs GUI
   
   Use the vagrant user for now, password is *vagrant*



   

   
   
   

