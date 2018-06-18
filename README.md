Fox-in-a-box
============
This project is intended to provide a simple way to launch containerized instances of Firefox on Machines running MacOS.

Prerequisites:
--------------
The following additional components need to be installed for this project to work:
    - Homebrew (https://brew.sh) 
        - Install by copy/pasting the entire line under "Install Homebrew" at brew.sh.  
    - XQuartz
        - Install via homebrew:  brew cask install xquartz
    - Docker for Mac:
        - Install via homebrew:  brew cask install docker

Files:
------
- Dockerfile        - self-explanatory
- start.sh          - Shell script to launch new firefox instance
- Fox-in-a-Box.app  - Automator 'app' that executes the exact same command as start.sh, just in a more Appley way
- README.md         - Duh.

Limitations/Known issues:
-------------------------
- Cannot currently launch more than one instance because all containers created by this script will use the same container name before launching a new one; there is logic in the startup script to stop other containers on launch.  Need to instead name containers with a unique identifier (timestamp should be adequate) so multiple instances can be run concurrently.  

