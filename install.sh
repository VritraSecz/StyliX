#!/bin/bash
# github.com/VritraSecz

# Setting up environment



echo "<==========================================>"
echo "              By VritraSecz"
echo "<==========================================>"
echo "         Setting up envirenment"
echo "<==========================================>"

chsh -s bash

rm -rf /data/data/com.termux/files/home/.bashrc
rm -rf /data/data/com.termux/files/usr/bin/helpx
rm -rf /data/data/com.termux/files/home/.stylix
chmod +x core/*
chmod +x *

mv core/bashrc /data/data/com.termux/files/home/.bashrc
mkdir /data/data/com.termux/files/home/.stylix
mv core/bans /data/data/com.termux/files/home/.stylix
mv core/stylix.sh /data/data/com.termux/files/usr/bin/helpx
mv core/load.sh /data/data/com.termux/files/home/.stylix
mv /data/data/com.termux/files/usr/etc/motd /data/data/com.termux/files/usr/etc/motd.btc

echo "#!/bin/bash" >> rmstylix
echo "# github.com/VritraSecz" >> rmstylix
echo "echo '[+] Removing StyliX From your termux'" >> rmstylix
echo "rm -rf /data/data/com.termux/files/home/.bashrc" >> rmstylix
echo "rm -rf /data/data/com.termux/files/home/.stylix" >> rmstylix
echo "mv /data/data/com.termux/files/usr/etc/motd.btc /data/data/com.termux/files/usr/etc/motd" >> rmstylix
echo "echo" >> rmstylix
echo "sleep 2" >> rmstylix
echo "echo '[+] StyliX is removed from your termux'" >> rmstylix
echo "rm -rf /data/data/com.termux/files/usr/bin/rmstylix" >> rmstylix
echo "# done" >> rmstylix

chmod +x rmstylix
mv rmstylix /data/data/com.termux/files/usr/bin

sleep 4
echo "[+] Envirenment setup completed !"
echo
echo "<==========================================>"
echo " Set username and password for your termux"
echo "<==========================================>"
echo

# Function to prompt the user for username and password
prompt_credentials() {
    read -p "[+] Enter username: " username
    read -p "[+] Enter password: " password
    echo
}

# Function to ask the user for confirmation
ask_confirmation() {
    read -p "[+] Are the entered credentials correct? (y/N): " confirm
    confirm=${confirm,,}  # Convert the input to lowercase

    if [[ "$confirm" == "y" ]]; then
        return 0  # Confirmation is received
    elif [[ "$confirm" == "" ]]; then
        return 1  # Confirmation is received
    else
        return 1  # Confirmation is not received
    fi
}


# Main script

# Prompt the user for username and password until confirmation is received
while true; do
    prompt_credentials
    ask_confirmation

    # Check if the confirmation is received
    if [[ $? -eq 0 ]]; then
        break  # Confirmation received, exit the loop
    fi

    echo "[!] Confirmation not received. Please try again."
done

echo $username >> login
echo $password >> login

mv login /data/data/com.termux/files/home/.stylix

echo
echo "<==========================================>"
echo "              By VritraSecz"
echo "<===========================================>"
echo "         StyliX setup is completed"
echo " Reopen your termux and see the awesome look"
echo "<===========================================>"
echo
cd ..
rm -rf StyliX

