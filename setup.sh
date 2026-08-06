
ERRRED="\033[1;31m"  # red color
ENDL="\033[0m"

if  [[ ! -e $HOME/.bash_aliases  ]]; then
	echo -e "${ERRRED}ERROR! .bash_aliases file doesnt exist!\nPlease create a .bash_aliases file in your home directory and add \". ~/.bash_aliases\" in your ~/.bashrc file"
	exit 1
fi
touch ~/.path_aliases

[[ $? != 0 ]] && exit 1    # exit with err if touch failed 

testvar=$(grep "\.path_aliases$" $HOME/.bash_aliases)  #substitute command


if [[ -z $testvar ]]; then
	echo . $HOME/.path_aliases >> $HOME/.bash_aliases
fi

# if len =0 , append to the file 

sudo cp -r ./pathsctools /usr/local/bin
[[ $? != 0 ]] && exit 1



sudo mv /usr/local/bin/pathsctools/pathsc /usr/local/bin/
exit $? 
