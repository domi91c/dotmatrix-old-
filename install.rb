require 'rake'
require 'fileutils'

puts "Installing Prezto (ZSH Enhancements)..."

run %{ ln -nfs "$HOME/dotmatrix/.zprezto" "${ZDOTDIR:-$HOME}/.zprezto" }
run %{ ln -nfs "$HOME/dotmatrix/.zsh.after" "${ZDOTDIR:-$HOME}/.zsh.after" }
# run %{ ln -nfs "$HOME/dotmatrix/.zshrc" "${ZDOTDIR:-$HOME}/.zshrc" }


def helo
  @hello = " hellow owrlrd"
  @hello.capitalize.each do |e|
    if @hello.length > 4
      p "sup nigga"
    end
  end
end
