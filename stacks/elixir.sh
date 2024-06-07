#sudo apt-get install libwxgtk3.0-gtk3-dev
sudo apt-get update
sudo apt-get upgrade

# install erlang
asdf plugin add erlang 
asdf install erlang 27.0
asdf global erlang 27.0

# install elixir
asdf plugin-add elixir
asdf install elixir 1.16.0
asdf global elixir 1.16.0

#install nodejs
asdf plugin add nodejs
asdf install nodejs 20.11.0
asdf global nodejs 20.11.0

# install phoenix
mix local.hex --force
mix archive.install hex phx_new