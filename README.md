My emacs configuration
===============

## Install emacs

On mac you can install install emacs with

``` shell
brew cask install emacs
```

## Install cask

Install cask
http://cask.readthedocs.org/en/latest/guide/installation.html#manual-installation

Clone it into `~`, enter `cd emacs-bartek` run

    cask install

Add to .emacs:

    (load "~/emacs-bartek/emacs-bartek.el")


## Aspell on mac

``` shell
brew install aspell
```

## Python 


You can also install Pylint for Python by and other usefull packages by

```
pip install pylint autopep8 jedi epc yapf black flake8 rope ropemacs ipython jupyter
```


### jedi

http://tkf.github.io/emacs-jedi/latest/

Also, after installing everything run in Emacs: `M-x jedi:install-server`


### Elpy 

#### Virtualenv

Choose virtualenv with:
`M-x workon`

#### Navigation

`M-.` Go to the location where the identifier at point is defined. 

`C-x 4 .` The same, but other window.

`M-,` Go back

`C-c C-d` docs

#### Shell

`C-c C-z` Run shell

#### Editing

`C-c C-e` Edit all occurrences of the symbol at point at once. 

`C-c C-r r` refactor

## C/C++ Support

For flymake, you should have installed `cpplint`. 
One way to get it is to so something like:

```
pip install cpplint
sudo mv ~/.local/lib/python2.7/site-packages/cpplint.py /usr/local/bin/cpplint.py
sudo chmod 755 /usr/local/bin/cpplint.py
```


## Markdown mode

Markdown mode is configured to work with `pandoc`.

## Extras

`f8` Tree plugin
