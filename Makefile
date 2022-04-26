INSTALL_FOLDER=~/
FILENAME=.vimrc

FILEPATH=$(addprefix $(INSTALL_FOLDER), $(FILENAME))

.SILENT: help

help:
	echo "Usage:\n"
	echo "make install"
	echo "\tCreate a symbolic link .vimrc into the home directory"
	echo "make uninstall"
	echo "\tRemove the .vimrc located in the home directory"
	echo "make update-modules"
	echo "\tUpdate all the modules"

install: $(FILEPATH)

uninstall:
	rm $(FILEPATH)

update-modules:
	git submodule foreach git pull origin master

$(FILEPATH): vimrc
	ln -s $(realpath $<) $(FILEPATH)
