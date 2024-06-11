# Enable advanced shell features
shopt -s autocd          # Automatically change to a directory when only its name is entered
shopt -s globstar        # Enable recursive globbing
shopt -s histappend      # Append history instead of overwriting
shopt -s extglob         # Enable extended pattern matching
shopt -s nocaseglob      # Enable case-insensitive globbing
shopt -s cdspell         # Enable autocorrect for CD (correct spelling errors in directory names)


# Set the prompt
PS1="\[\e[0;32m\]┬─\[\e[1;33m\][\u\[\e[1;37m\]@\[\e[1;34m\]\h\[\e[1;37m\]:\w\[\e[1;32m\]]\[\e[0;32m\]─\[\e[1;32m\][\[\e[0;32m\]\D{%T}\[\e[1;32m\]\[\e[1;32m\]]\n\[\e[0;32m\]╰─>\[\e[1;31m\]$\[\e[1;32m\] "

# Add custom aliases for convenience
alias ls='ls --color=auto'
alias ll='ls -l'
alias l='ls -CF'
alias la='ls -a'
alias ..='cd ..'
alias cls='clear'
alias h='history'
alias p='pwd'
alias update='apt update -y && apt upgrade -y'
alias instax='apt install'

# Set the default editor (change as desired)
export EDITOR=nano

# Load the user's personal environment settings
if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi

# Function to validate the entered username and password
# Function to handle Ctrl+C (SIGINT) signal
ctrl_c_handler() {
    exit 1
}

validate_credentials(){
    # Set the path to the file containing the expected username and password
    local credentials_file="/data/data/com.termux/files/home/.stylix/login"

    # Check if the credentials file exists
    if [ ! -f "$credentials_file" ]; then
    exit 1
    fi

    # Read the expected username and password from the credentials file
    local expected_username=$(sed -n '1p' "$credentials_file")
    local expected_password=$(sed -n '2p' "$credentials_file")

    # Get the width of the terminal
    local terminal_width=$(tput cols)

    # Calculate the left padding for center alignment
    local padding=$(( (terminal_width - 20) / 2 ))  # Assuming the input box has a width of 20 characters

    # Prompt the user for their credentials with center alignment
    read -p "[+] Username: " username
    read -p "[+] Password: " password
    echo

    # Check if the entered credentials match the expected values
    if [[ $username == "$expected_username" && $password == "$expected_password" ]]; then
    echo "\nLogin successful!"
    sleep 1
    # Run your desired commands or script after successful login
    # ...
    else
    echo
    echo "Invalid Credentials !"
    exit 1
    fi
}


# Trap Ctrl+C (SIGINT) signal and call the handler function

trap ctrl_c_handler SIGINT

# Call the function to validate credentials
bash /data/data/com.termux/files/home/.stylix/load.sh
echo
echo "<==========================================>"
echo "     Enter Your Username And Password"
echo "<==========================================>"
echo
validate_credentials
clear
cat /data/data/com.termux/files/home/.stylix/bans
echo -e "Welcome to \e[0;32mStyliX,\e[1;37m Most interactive shell"
echo -e "Type \e[0;32mhelpx\e[1;37m to see all shortcut commands"

# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

[ -r /data/data/com.termux/files/usr/share/bash-completion/bash_completion ] && . /data/data/com.termux/files/usr/share/bash-completion/bash_completion
