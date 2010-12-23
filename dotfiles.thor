module Dotfiles
  class Installer < Thor
    include Thor::Actions

    namespace :dotfiles

    def self.source_root
      File.expand_path "."
    end

    desc "link", "link dotfiles to proper places"
    def link
      link_file "vimrc",  "~/.vimrc.local", :symbolic => true
      link_file "gvimrc", "~/.gvimrc.local", :symbolic => true
    end
  end
end

