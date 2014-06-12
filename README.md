# Lookout Workstation Configuration

This is a Lookout Workstation configuration repository.
This repository contains all configuration to install and configure Lookout Inc OSX workstations, with an initial focus on Developer workstations.
It is based on Kitchenplan and on how to use it can be found in the [Kitchenplan README](https://github.com/kitchenplan/kitchenplan).

# OK, I'm ready to dive in. How should I use this?

This is designed to prepare a workstation for use by a developer on any team at Lookout. This tool is expected to be run by IT prior to handing the laptop to the developer.

1. Install XCode from the App Store
1. Open XCode, accept XCode terms and conditions, and install any requested packages
1. Go to XCode -> Preferences -> Downloads and install the Command Line Tools
1. Save [install.rb](https://source.flexilis.local/lookout/lookout_workstation/raw/master/install.rb) to local disk in Downloads. Save in Page Source format and don't append .txt to the name.
1. Open Terminal
1: Clone this repo into the /opt/kitchenplan directory on the new laptop

```
git clone https://github.com/wkimeria/lookout_workstation_v2.git /opt/kitchenplan
```
1: Provision the laptop
```
./provision.sh
```


