module Dotfiles
  class Installer < Thor
    include Thor::Actions

    namespace :dotfiles

    def self.source_root
      File.expand_path "."
    end

    desc "link", "link dotfiles to proper places"
    def link
      # Vim
      link_file "vimrc",  "~/.vimrc.local", :symbolic => true
      link_file "gvimrc", "~/.gvimrc.local", :symbolic => true

      # Zsh
      link_file "localrc", "~/.localrc", :symbolic => true
      link_file "zshrc", "~/.zshrc", :symbolic => true
      link_file "zsh", "~/.zsh", :symbolic => true
    end
  end
end

