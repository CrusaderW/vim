My VIM-Config
==============

I forked this Repo from [crahles]. Thanks for the great work.
I changed the theme to [jellybeans.vim], as I prefer more darkness and less pastel-colors.

I included the bundles [vim-scala] and [sbt-vim], to enable scala-support in VIM. This was inspired by [this Blogpost].
Furthermore [YouCompleteMe] and [Ultisnips] have been added to provide code-completion with snippets.
For more information see the bundels.vim, until I can make time to update the README.

Added functions
------------
Enabled "copy-to-clipboard" by mouse-select and "CTRL+C".
test if ":echo has('clipboard')" in vim return 0, else install vim-gtk package.
see [stackoverflow_vim-copy'n'paste] for more information.

Install
-------------
The following commands will clone the repository and install neobundle and [YouCompleteMe]
Before proceeding make sure the following packages are installed: 

Linux
-------------
`` sudo apt-get install build-essential cmake python-dev``

MacOS X
--------------
On MacOS X make sure you have Homebrew installed. And install the following packages: 

`` brew install cmake mercurial``

Then install vim:

``brew install macvim --override-system-vim``

BASH
--------------
``
$ git clone https://github.com/CrusaderW/vim.git ~/.vim && make ~/.vim/bundle/vimproc.vim/ && ~/.vim/bundle/neobundle.vim/bin/neoinstall && ln -s ~/.vim/.pylintrc ~/.pylintrc && cd ~/.vim/bundle/YouCompleteMe/ && git submodule update --init --recursive && ./install.sh --clang-completer
``

FISH
---------------
``
$ git clone https://github.com/CrusaderW/vim.git ~/.vim; and make ~/.vim/bundle/vimproc.vim/; and ~/.vim/bundle/neobundle.vim/bin/neoinstall; and ln -s ~/.vim/.pylintrc ~/.pylintrc; and cd ~/.vim/bundle/YouCompleteMe/; and git submodule update --init --recursive; and ./install.sh --clang-completer
``
Finally just install the [Powerline-Font] located in folder
powerline_font and set it as Terminal-Font.

[jellybeans.vim](http://blog.infinitered.com/entries/show/6)

[crahles](https://github.com/crahles/vim)

[this Blogpost](http://bleibinha.us/blog/2013/08/my-vim-setup-for-scala.)

[vim-scala](https://github.com/derekwyatt/vim-scala)

[stackoverflow_vim-copy'n'paste](http://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard)

[Powerline-Font](https://github.com/powerline/fonts)

[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

[Ultisnips](https://github.com/SirVer/ultisnips)
