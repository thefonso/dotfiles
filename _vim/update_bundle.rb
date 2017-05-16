#!/usr/bin/env ruby
# vim: ft=ruby

require 'fileutils'

puts "BEFORE YOU DO THIS~"
puts
p "make sure you are using SYSTEM ruby, type 'yes' to continue"

if gets.chomp != "yes"
  exit 0
end

git_bundles = [
  # plugins
  "git://github.com/t9md/vim-ruby-xmpfilter.git",
  "git://github.com/tpope/vim-rbenv.git",
  "git://github.com/vim-scripts/pathogen.vim.git",
  "git://github.com/tpope/vim-surround.git",
  "git://github.com/scrooloose/nerdtree.git",
  "git://github.com/Lokaltog/vim-powerline.git",
  "git://github.com/tpope/vim-fugitive.git",
  "git://github.com/altercation/vim-colors-solarized.git",
  "git://github.com/wincent/Command-T.git",
  "git://github.com/vim-scripts/tComment.git",
  "git://github.com/tomtom/tlib_vim.git",
  "git://github.com/MarcWeber/vim-addon-mw-utils.git",
  "git://github.com/garbas/vim-snipmate.git",
  "git://github.com/honza/vim-snippets.git",

  # syntax / language
  "git://github.com/kchmck/vim-coffee-script.git",
  "git://github.com/vim-ruby/vim-ruby.git",
  "git://github.com/pangloss/vim-javascript.git",
  "git://github.com/othree/html5.vim.git",
  "git://github.com/vim-scripts/VimClojure",
  "git://github.com/jnwhiteh/vim-golang.git"
]


bundle_dir = File.expand_path('../bundle/', __FILE__)

FileUtils.rm_rf(bundle_dir)
FileUtils.mkdir_p(bundle_dir)

git_bundles.each do |url|
  dirname = File.basename(url).gsub(".git", "")
  FileUtils.mkdir_p(File.join(bundle_dir, dirname))

  puts
  puts "* Unpacking #{url} into #{dirname}"

  dir = File.join(bundle_dir, dirname)
  `cd #{dir} && git clone #{url} #{dir} > /dev/null`
end


puts "Attempting to compile Command-T Ruby Extensions"
FileUtils.cd("bundle/Command-T")
`curl https://raw.github.com/tomtom/vimball.rb/master/vimball.rb > vendor/vimball/vimball.rb && chmod 0755 vendor/vimball/vimball.rb && make`

FileUtils.cd("ruby/command-t")
`ruby extconf.rb && make`

puts "Okay, sweet."
