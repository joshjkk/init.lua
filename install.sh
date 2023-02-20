# init.lua installer script 
# by joshjkk@github

# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Create nvim directory
mkdir ~/.config/nvim

# Move to '~/.config/nvim'
sudo cp -a ./* ~/.config/nvim

# Give further instructions
echo -e "\nNext you must open neovim, go to '~/.config/nvim/lua/config/packer.lua' and run the following commands:"
echo -e "\t:so\n"
echo "Then:"
echo -e "\t:PackerSync\n"
