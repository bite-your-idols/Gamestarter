#!/bin/bash
# Script for Gamestarter installation selection

echo ''
echo '*******************************************************************************' 
echo 'Gamestarter Installation Selection: Please select your option' 
echo '*******************************************************************************'
echo ''
echo '1) Gamestarter (v0.0.2) ::'
echo '-> Recommended for latest stable OpeneELEC 6'
echo ''
echo '2) Gamestarter Work-In-Progress (v0.0.3-WIP) ::'
echo '-> Includes optional installation of EmulationStation (Only works in OE7 beta)'
echo '-> GameMaker Pi ports do not sound in OE7 beta'
echo '-> For testing purpouses only...'
echo ''
read -r -p "Please select your instalation: [1 or 2] " response
if [ $response == "1" ]
then
	echo ''
    echo "You choose: Gamestarter (v0.0.2)"
    wget --no-check-certificate -O /storage/install-gamestarter.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/install-gamestarter.sh && sh /storage/install-gamestarter.sh
elif [ $response == "2" ]
then
	echo ''
	echo "You choose: Gamestarter Work-In-Progress (v0.0.3-WIP)"
	wget --no-check-certificate -O /storage/install-gamestarter.sh https://raw.githubusercontent.com/bite-your-idols/gamestarter-openelec/master/install-gamestarter-WIP.sh && sh /storage/install-gamestarter.sh
else 
	echo 'Please, select one of the options...'
	sleep 1s
	echo 'Let`s try again...'
	sleep 1s
	echo ''
	echo ''
    sh ./installer.sh
fi