{
  "x86_64-linux" = import ./. { nixpkgsArgs.system = "x86_64-linux"; };
  # TODO fix
  #"i686-linux" = import ./. { nixpkgsArgs.system = "i686-linux"; };
}
