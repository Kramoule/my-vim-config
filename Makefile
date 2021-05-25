INSTALL_FOLDER=~/
FILENAME=.vimrc

FILEPATH=$(addprefix $(INSTALL_FOLDER), $(FILENAME))

.SILENT: help

help:
	echo -e "Usage:\n"
	echo "make install"
	echo -e "\tCreate a symbolic link .vimrc into the home directory"
	echo "make uninstall"
	echo -e "\tRemove the .vimrc located in the home directory"
	echo "make update-modules"
	echo -e "\tUpdate all the modules"

install: $(FILEPATH)

uninstall:
	rm $(FILEPATH)

update-modules:
	git submodule foreach git pull origin master

$(FILEPATH): vimrc
	ln -s $(realpath $<) $(FILEPATH)
