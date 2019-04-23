My emacs config
===============

Install cask
http://cask.readthedocs.org/en/latest/guide/installation.html#manual-installation

Clone it into `~`, enter `cd emacs-bartek` run

    cask install

Add to .emacs:

    (load "~/emacs-bartek/emacs-bartek.el")


## Python 

I assume that one uses python's `virtualenv` and has`~\.virtualenvs` catalog
with `py3.6` environment. If not, one should edit `python-config.el`
file accordingly.`


You can also install Pylint for Python by and other usefull packages by

```
pip install pylint autopep8 jedi epc yapf black
```

### jedi

http://tkf.github.io/emacs-jedi/latest/

Also, after installing everything run in Emacs: `M-x jedi:install-server`


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
