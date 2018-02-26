INSTALL_FOLDER=~/
FILENAME=.vimrc

FILEPATH=$(addprefix $(INSTALL_FOLDER), $(FILENAME))

.SILENT: help

help:
	echo "Usage: make install"
	echo "\tCopy (and replace) .vimrc into the home directory"
	
install: $(FILEPATH)

$(FILEPATH): vimrc
	cp $< $(FILEPATH)
