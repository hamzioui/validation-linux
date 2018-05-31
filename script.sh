#!/usr/bin/env bash
function menu () {
declare -a Unix=([1]='oui' [2]='non')
for K in "${!Unix[@]}"; do echo $K - ${Unix[$K]}; done
}

function menu2 () {
declare -a Unix=([1]='current vm' [2]='voir toute les vm')
for K in "${!Unix[@]}"; do echo $K - ${Unix[$K]}; done
}

function boxmenu () {
declare -a Unix=([1]='Xenial64' [2]='Xenial64')
for K in "${!Unix[@]}"; do echo $K - ${Unix[$K]}; done
}
echo ""
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%"
echo "%%%%% This script will install Vagrant! for the user '$USER'"
echo "%%%%%"
echo "%%%%% Please take careful note of the console output"
echo "%%%%%"
echo "%%%%% If you experience any issues with this script, please report them"
echo "%%%%%"
echo "%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo ""

echo "          _______  _______  _______  _______  _       _________";
echo "|\     /|(  ___  )(  ____ \(  ____ )(  ___  )( (    /|\__   __/";
echo "| )   ( || (   ) || (    \/| (    )|| (   ) ||  \  ( |   ) (   ";
echo "| |   | || (___) || |      | (____)|| (___) ||   \ | |   | |   ";
echo "( (   ) )|  ___  || | ____ |     __)|  ___  || (\ \) |   | |   ";
echo " \ \_/ / | (   ) || | \_  )| (\ (   | (   ) || | \   |   | |   ";
echo "  \   /  | )   ( || (___) || ) \ \__| )   ( || )  \  |   | |   ";
echo "   \_/   |/     \|(_______)|/   \__/|/     \||/    )_)   )_(   ";
echo "                                                               ";
 echo "voulez vous installez vagrant";
 menu;
read -p "voitre choix 1 ou 2:  " vagrantchoix

if [[ $vagrantchoix != 1 && $vagrantchoix != 2 ]]; then
while [[ $vagrantchoix != 1 || $vagrantchoix != 2 ]]
      do
      echo "desolé votre reponse es incorrect";
      echo "voulez vous installez vagrant";
      menu;
      read -p "voitre choix 1 ou 2:  " vagrantchoix
       if [[ $vagrantchoix = 1 ]]; then
        vagrantchoix=1
        break;
     elif [[ $vagrantchoix = 2 ]];then
        vagrantchoix=2
        break;
        else
        echo "dddd"
     fi
done
fi

echo "         _________ _______ _________          _______  _        ______   _______          ";
echo "|\     /|\__   __/(  ____ )\__   __/|\     /|(  ___  )( \      (  ___ \ (  ___  )|\     /|";
echo "| )   ( |   ) (   | (    )|   ) (   | )   ( || (   ) || (      | (   ) )| (   ) |( \   / )";
echo "| |   | |   | |   | (____)|   | |   | |   | || (___) || |      | (__/ / | |   | | \ (_) / ";
echo "( (   ) )   | |   |     __)   | |   | |   | ||  ___  || |      |  __ (  | |   | |  ) _ (  ";
echo " \ \_/ /    | |   | (\ (      | |   | |   | || (   ) || |      | (  \ \ | |   | | / ( ) \ ";
echo "  \   /  ___) (___| ) \ \__   | |   | (___) || )   ( || (____/\| )___) )| (___) |( /   \ )";
echo "   \_/   \_______/|/   \__/   )_(   (_______)|/     \|(_______/|/ \___/ (_______)|/     \|";
echo "                                                                                          ";

 echo "voulez vous installez virtualbox";
 menu;
read -p "voitre choix 1 ou 2:  " virtualchoix

if [[ $virtualchoix != 1 && $virtualchoix != 2 ]]; then
while [[ $virtualchoix != 1 || $virtualchoix != 2 ]]
      do
      echo "desolé votre reponse es incorrect";
      echo "voulez vous installez vagrant";
      menu;
      read -p "voitre choix 1 ou 2:  " virtualchoix
       if [[ $virtualchoix = 1 ]]; then
        virtualchoix=1
        break;
     elif [[ $virtualchoix = 2 ]];then
        virtualchoix=2
        break;
        else
        echo "dddd"
     fi
done
fi

echo ""
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%"
echo "%%%%% veuillez remplir les paramtres de votre vagrant "
echo "%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo ""

sleep 2

addressip="192.168.10.30"

 read -p "Veuillez ecrire le nom de la box: " namefolder
 read -p "veuillez ecrire le nom du dossier de syncronistion local:  " localsyncfolder
 read -p "veuillez ecrire le nom du dossier de syncronistion sur la vagrant:  " vagrantsyncfolder

 echo "voulez vous modifier l'address ip";
 menu;
 read -p "voitre choix 1 ou 2" choix
if [[ $choix != 1 && $choix != 2 ]]; then
while [[ $choix != 1 || $choix != 2 ]]
      do
      echo "desolé votre reponse es incorrect";
      echo "voulez vous modifier ladress ip: ";
      menu;
      read -p "voitre choix 1 ou 2:  " choix
       if [[ $choix = 1 ]]; then
        read -p "veuillez ecrire la nouvelle address ip sous forme de 192.168.1.30: " addressip
        break;
     elif [[ $choix = 2 ]];then
         read -p "veuillez ecrire la nouvelle address ip sous forme de 192.168.1.30: " addressip
        break;
        else
        echo "dddd"
     fi
done
elif [[ $choix == 1 ]]; then
   read -p "veuillez ecrire la nouvelle address ip sous forme de 192.168.1.30: " addressip
fi
  echo "nom de la box";
  boxmenu;
 read -p "faite votre choix" boxchoice

 if [[ $boxchoice != 1 && $boxchoice != 2 ]]; then
    while [[ $boxchoice != 1 && $boxchoice != 2 ]]
      do
      echo "desolé votre reponse es incorrect";
      echo "veuillez choisir votre box:  ";
      menu;
      read -p "voitre choix 1 ou 2:  " choix
       if [[ $choix = 1 ]]; then
         configbox="ubuntu/xenial64"
        break;
     elif [[ $choix = 2 ]];then
         configbox="ubuntu/xenial64"
        break;
        else
        echo "dddd"
     fi
done
 else
  configbox="ubuntu/xenial64"
 fi

echo "";
echo "";
echo "";
echo "";


echo "########  ########  ######     ###    ########  ";
echo "##     ## ##       ##    ##   ## ##   ##     ## ";
echo "##     ## ##       ##        ##   ##  ##     ## ";
echo "########  ######   ##       ##     ## ########  ";
echo "##   ##   ##       ##       ######### ##        ";
echo "##    ##  ##       ##    ## ##     ## ##        ";
echo "##     ## ########  ######  ##     ## ##        ";
echo "";
echo "";
echo "";
echo "";


echo "votre address ip: "$addressip;
echo "nom de box: "$namefolder;
echo "dossier sync en local: " $localsyncfolder;
echo "dossier sync sur vagrant: " $vagrantsyncfolder;
echo "box environment " $configbox;

echo "le demarage de votre configuration se lancera dans 5s"
for i in `seq 1 100`;
do
    echo -ne "#"
    sleep 0.01
done






if ! [[ -x "$(command -v vagrant)"  &&  -x "$(command -v virtualbox)" ]]; then
  echo 'Error: git is not installed.' >&2
  sudo apt-get update -y &&
  sudo apt-get  upgrade -y
fi

if ! [[ -x "$(command -v virtualbox)" ]]; then
  sudo apt-get install vagrant
fi
if ! [[ -x "$(command -v vagrant)" ]]; then
  sudo apt-get install virtualbox
fi

mkdir $namefolder 2>&1 | tee -a error.log
mkdir $namefolder'/'$localsyncfolder 2>&1 | tee -a error.log

cat > $namefolder'/'Vagrantfile << EOF
# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.
   config.vm.define "$namefolder"
        config.vm.provider :virtualbox do |vb|
            vb.name = "$namefolder"
        end
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "$configbox"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
   config.vm.network "private_network", ip: "$addressip"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
   config.vm.synced_folder "./$localsyncfolder", "/$vagrantsyncfolder"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
   config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
      vb.name = "$namefolder"
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
   end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  #if File.exist?(test.sh)
  #config.vm.provision "shell", path: "test.sh"
  #  end
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
EOF
cd $namefolder'/'
vagrant up
pwd
echo "se connecter a la vm" $namefolder "ou voir la liste de toute les vm";
menu2;
read -p "voitre choix 1 ou 2:  " choixvm
 if [[ $choixvm != 1 && $choixvm != 2 ]]; then
    while [[ $choixvm != 1 && $choixvm != 2 ]]
      do
      echo "desolé votre reponse es incorrect";
      echo "veuillez choisir votre reponse:  ";
      menu;
      read -p "voitre choix 1 ou 2:  " choixvm
       if [[ $choixvm = 1 ]]; then
        break;
     elif [[ $choixvm = 2 ]];then
        break;
        else
        echo "dddd"
     fi
done
fi
pwd
 if [[ $choixvm == 1 ]]; then
    vagrant ssh
  elif [[ $choixvm == 1 ]]; then
    vagrant global-status
    read -p "le nom de la vm pour se connecter" vmname
    pwd
fi