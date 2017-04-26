# Tournament-Results #
## Introduction ##

**Developing a database schema to store the game matches between players. Python code to query the given data and determine the winners of various games by Swiss System.**

**Documents**

    tournament.py : This file includes the basic functions required to evaluate and find the winner.
    tournament_test.py : This file Tests all the possible outcomes and raises an exception if conditions are not fulfilled.
    tournament.sql: This contains all the basic queries required in the project.

**Steps To Run The Application:**

    * You should use terminal for Mac or Linux and Git Bash for Windows to run the application.
    * Install Virtual Box from here : https://www.virtualbox.org/wiki/Downloads
    * Install Vagrant from here : https://www.vagrantup.com/downloads.html
    * Start the virtual machine by using vigrant up command.
    * After downloading necessary files login to the Linux Vm using vagrant ssh command.
    * Change the directory to the cloned folder by using cd /vagrant/tournament
    * Open psql and import the given sql file using \i tournament.sql to your database.
    * Run the file using python tournament_test.py

## SUCCESS! All tests Pass! ##
