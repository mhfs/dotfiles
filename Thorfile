module Dotfiles
  class Installer < Thor
    include Thor::Actions

    namespace :dotfiles

    def self.source_root
      File.expand_path "."
    end

    desc "link", "link dotfiles to proper places"
    def link
      # Zsh
      link_file "zsh/mhfs",   "#{ENV["ZSH"]}/custom/plugins/mhfs", :symbolic => true
      link_file "zsh/zshenv", "~/.zshenv",                         :symbolic => true
      link_file "zsh/zshrc",  "~/.zshrc",                          :symbolic => true

      # Ruby
      link_file "ruby/gemrc", "~/.gemrc", :symbolic => true
      link_file "ruby/irbrc", "~/.irbrc", :symbolic => true
      link_file "ruby/pryrc", "~/.pryrc", :symbolic => true

      # Pow
      link_file "pow/powconfig", "~/.powconfig", :symbolic => true

      # Ack
      link_file "ackrc", "~/.ackrc", :symbolic => true

      # Git
      link_file "git/gitconfig", "~/.gitconfig", :symbolic => true
      link_file "git/gitignore", "~/.gitignore", :symbolic => true
    end
  end
end
