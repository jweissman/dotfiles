# New dev environment setup

# Install oh-my-posh
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
sudo oh-my-posh font install
echo "eval \"\$(oh-my-posh init bash)\"" >> ~/.bashrc
exec bash


