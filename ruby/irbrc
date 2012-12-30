# Start pry if available and let it flow otherwise
# https://github.com/fnando/dotfiles/blob/master/files/irbrc
begin
  require "pry"
  Pry.start
  exit
rescue LoadError => e
  warn "=> Unable to load pry"
end
