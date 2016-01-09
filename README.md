Eggmatters - pj
=====================

A dynamic directory aliasing utility.

pj keeps track of important locations in your system allowing you to navigate to them with a simple command and alias.
This keeps you from having to set aliases or environment variable for important directory locations

A must have for developers working in large codebases with unwieldy locations.

Turn this:

``` bash
cd /usr/src/linux-headers-3.19.0-15/drivers/acpi/
```

Into this:

``` bash
pj acpi
```

pj also comes with the magic feature of autocompletion! 

Installation
------------
This utility runs in the bash environment.
You must have sudo access to install (for auto-completion)

Install pj simply by running the install script:

``` bash
$ ./install.sh
```
To Manually install:

- Copy profile_pj to your home directory as .profile_pj
- Copy the contents of bashrc into your .bashrc script.
- Copy etc/bash_completion.d/pj into your /etc/bash_completion.d/ directory

After installing by script or manually, be sure to re-source your .bashrc 
if you want your changes to immediately take effect
``` bash
$ source ~/.bashrc
```
Otherwise, it will be ready for you during your next terminal session.

Usage
-----
To "record" a pj alias, simply navigate to the location you wish to store:
``` bash
cd ~/projects/obtuse_project/src/classes/monkeybits/bananagrove
sp bananas
```
Now you can freely navigate to this directory anytime from anywhere by running:
``` bash
pj bananas
```
Don't forget you can tab complete your project names.

TODO
----
- add ability to remove projects.
- add feature to echo project path
