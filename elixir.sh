# install erlang
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install erlang 24.0
asdf global erlang 24.0

# install elixir
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf 1.16.0-otp-26
asdf global elixir 1.16.0-otp-26

# install phoenix
mix local.hex --force
mix archive.install hex phx_new