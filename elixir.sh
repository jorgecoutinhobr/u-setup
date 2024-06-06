# install erlang
asdf plugin add erlang 
asdf install erlang 24.0
asdf global erlang 24.0

# install elixir
asdf plugin-add elixir
asdf install elixir 1.16.0
asdf global elixir 1.16.0

# install phoenix
mix local.hex --force
mix archive.install hex phx_new