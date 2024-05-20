# New dev environment setup

# Install oh-my-posh
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
sudo oh-my-posh font install
echo "eval \"\$(oh-my-posh init bash)\"" >> ~/.bashrc

# Create .aliases file and add aliases
cat <<EOL >> ~/.aliases
alias gst='git status'
alias gc='git commit'
alias gd='git diff'
alias glg='git log --graph --oneline'
alias ga='git add'
alias gco='git checkout'
alias hb='gh pr view --web'                                                                                                                                          
EOL

# Add a line to .bashrc to source the .aliases file
echo "if [ -f ~/.aliases ]; then" >> ~/.bashrc
echo "  . ~/.aliases" >> ~/.bashrc
echo "fi" >> ~/.bashrc

# Reload the shell to apply changes
exec bash


