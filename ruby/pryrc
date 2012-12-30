# https://github.com/fnando/dotfiles/blob/master/files/pryrc
Pry.config.editor = 'mvim -f --nomru -c "au VimLeave * !open -a Terminal"'

Pry.config.prompt = proc do |obj, level, _|
  prompt = ""
  prompt << "#{Rails.version}@" if defined?(Rails)
  prompt << "#{RUBY_VERSION}"
  "#{prompt} (#{obj})> "
end

Pry.config.exception_handler = proc do |output, exception, _|
  output.puts "\e[31m#{exception.class}: #{exception.message}"
  output.puts "from #{exception.backtrace.first}\e[0m"
end

if defined?(Rails)
  require "rails/console/app"
  require "rails/console/helpers"
  TOPLEVEL_BINDING.eval("self").extend ::Rails::ConsoleMethods
end

begin
  require "awesome_print"
  AwesomePrint.pry!
rescue LoadError => err
   warn "=> Unable to load awesome_print"
end
