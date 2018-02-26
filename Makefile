INSTALL_FOLDER=~/
FILENAME=.vimrc

FILEPATH=$(addprefix $(INSTALL_FOLDER), $(FILENAME))


install: $(FILEPATH)

$(FILEPATH): vimrc
	cp $< $(FILEPATH)
