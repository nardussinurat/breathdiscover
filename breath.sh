#!/bin/bash
#############################
#######################
# colors
PURPLE=$(tput setaf 125)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
WHITE=$(tput setaf 7)
CYAN=$(tput setaf 5)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)
####################################################
function ascii_start()
{
	clear
	echo
	echo -e "${CYAN}Hello ${RESET}Welcome To My Tools \nProject By Nardus Sinurat \n"
	echo -e "SPECIAL FOR ${PURPLE}HACKTOBER ${RESET} EVENT \n\n"
	cat<<"EDT"
                                        
  .  . .  .  . .  .;;. . .  .  . .  .  .
   .       .       88      .       .    
     .  .    .  .  8@    .   . .     .  
 .       .       . 8@  .         .     .
   .  .    .  .    8X     . .  .   . .  
  .    .  .    .   8X            .      
    .       .      8S    .  . .    .  . 
  .   . .    .  .  8X           .       
    .     .  .%88  8X :88;.. .    . . . 
  .    .  .%88888X 8X 8S88@8%. .        
     .  :888888@8@ SX.8X@@88888  . .  . 
  .    .8@8@88@888 %X;@88888888@.   .     
    . .8S@@8@8@8XS:8S%;@@@8@888@X.    . 
  .  .8@@8@8@@8@@S8S%888@8@8@8888@.     
     :888@8@8@8@ :   .t%8@@8@@8@88S  .  
  . .88@@8@8@8@88t.   .X@8@@8@8@888:   .
     @@@8@8@8@8@ t   .:8X@8@8@8@@8X; .  
  . ;@@8@8@@8@@888 .  %@@8@8@8@88@XS    
    t88@8@8@@88@@8.   S8@@8@8@8@@8@@ .  
  . ;@8@@ .888888;  . :88888.8@@8@XX   .
    :@8@8S.%%S%t.    . .:;%;:t:88@ .    
 .   %S8;        .           .;;88S  .  
  .   .. .  . .    .  .  .  . ..t;    .

EDT
echo -e "${PURPLE}BREATH${RESET} ${BLUE} DISCOVERY${RESET} ${CYAN}TOOLS${RESET} for Developers ${RESET} - ${GREEN}@nsec.${RESET}\t"
echo -e "${GREEN}Thank You for using my tools${RESET} Dibantu ya bro..\n"
main_menu
}
####################################################
function pages()
{
	touch pges.txt
	file="pges.txt"

	if [ -e ${file} ]; then
    	count=$(cat ${file})
	else
    	count=0
	fi
}
######################################################
function grabEm()
{
	touch pges.txt
	file="pges.txt"
	apikey="39e6888da2eca168a64925c44cdd72dff00866ad"
	###########Start###############
	who="${1}"
	what="${2}"
	###############################
	if [ $what == "googledork" ]; then
    echo -e "${RED}nardus@root${RESET}:~# Hehe${RED},${RESET} ok one sec - Scanning ${RED}teh interwebz${RESET} for ${RED}emails${RESET}"
    count=0
    while [ $count=0 ]; do
    	( lynx -dump "https://www.bing.com/search?q=s$who&qs=n&form=QBRE&sp=-1&pq=$who&first=$count&FORM=PERE" |  grep -oE --color '[[:alnum:]_.]+@[[:alnum:]_]+[.][[:alnum:]]+' | sort -u )
    	count=$((count+1))
    if [ $count="4" ]; then
      count=0
    fi
  done
	elif [ $what == "corp" ]; then
    echo -e "${RED}nardus@root${RESET}:~# Hehe${RED},${RESET} ok one sec - Scanning ${RED}teh interwebz${RESET} for ${RED}emails${RESET}"
		( lynx "https://api.hunter.io/v2/domain-search?company=${1}&api_key=$apikey" -dump | grep -oE --color '[[:alnum:]_.]+@[[:alnum:]_]+[.][[:alnum:]]+' )
	elif [ $what == "domainname" ]; then
    echo -e "${RED}nardus@root${RESET}:~# Hehe${RED},${RESET} ok one sec - Scanning ${RED}teh interwebz${RESET} for ${RED}emails${RESET}"
		( lynx "https://api.hunter.io/v2/domain-search?domain=$who&api_key=$apikey" -dump | grep -oE --color '[[:alnum:]_.]+@[[:alnum:]_]+[.][[:alnum:]]+' )
	fi
}
###################################################

##################################################
function main_menu()
{
	select mainmnu in "Mau Pakai Google Dork" "Domain" "Atau Company"
	do
		case $mainmnu in 
			"Google Dork")
					echo -e "${RED}nardus@root${RESET}:~# Roulette it is boss, what's the dork?\t"
					read dorks
					grabEm "${dorks}" "googledork"
			;;
			
			"Domain")
					echo -e "${RED}nardus@root${RESET}:~# So..what's the domain?\t"
					read tlds
					grabEm "${tlds}" "domainname"
			;;
			
			"Company")
					echo -e "${RED}nardus@root${RESET}:~# Ah, corporations - fuck em'. Who is it?\t"
					read corps
					grabEm "${corps}" "corp"
			;;

				*)
					echo -e "${RED}Let's try again${RESET}, lol."
					echo
					main_menu			
		   ;;
		esac
	done
}
#################################################################
ascii_start
