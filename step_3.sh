# Add asdf plugins
asdf plugin add ruby
asdf plugin add nodejs

# Install ruby and nodejs
asdf install ruby 3.3.0
asdf global ruby 3.3.0
asdf install nodejs 20.11.0
asdf global nodejs 20.11.0

# Install rails and yarn
gem update --system
npm install -g yarn
gem install rails -v 7.1.3.2