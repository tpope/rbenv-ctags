# Automatically generate ctags for rbenv Ruby stdlibs

I've got [tags for my code base][Git Ctags].  I've got [tags for my
gems][gem-ctags].  All I'm missing is tags for Ruby stdlib.  Until now.

## Installation

    mkdir -p ~/.rbenv/plugins
    git clone git://github.com/tpope/rbenv-ctags.git \
      ~/.rbenv/plugins/rbenv-ctags
    rbenv ctags

You'll also need [Exuberant Ctags][].  With Homebrew, `brew install ctags`.
It is imperative that you make sure the correct `ctags` binary comes first in
your `$PATH`.  Check `ctags --version` to verify.

## Usage

Run `rbenv ctags <version>` to index the given version.  If you are using
[ruby-build][] as an rbenv plugin, this will happen automatically on install.

You need to configure your editor to look for tags files in the Ruby
`$LOAD_PATH`.  If you're using Vim, reasonably recent versions of [vim-ruby][]
(and optionally [rbenv.vim][]) take care of that for you.

You might also want to use [rbenv-default-gems][] to automatically install
[gem-ctags][].  Put it at the top of `~/.rbenv/default-gems` so that it
indexes all gems underneath it.

[Git Ctags]: http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html
[gem-ctags]: https://github.com/tpope/gem-ctags
[Exuberant Ctags]: http://ctags.sourceforge.net/
[ruby-build]: https://github.com/sstephenson/ruby-build
[vim-ruby]: https://github.com/vim-ruby/vim-ruby
[rbenv.vim]: https://github.com/tpope/vim-rbenv
[rbenv-default-gems]: https://github.com/sstephenson/rbenv-default-gems
