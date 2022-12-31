#!/bin/bash
SCRIPT_RANDOM=$(($RANDOM % 1000 + 1))
TRIES=0
PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"
echo Enter your username:
read USERNAME

USER=$($PSQL "SELECT * FROM users WHERE name = '$USERNAME'")
if [[ -z $USER ]]
then
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
else
  echo $USER | while read USER_ID BAR NAME 
  do
    TOTAL_GAMES=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
    BEST_GAME=$($PSQL "SELECT MIN(tries) FROM games WHERE user_id = $USER_ID") 
    echo -e "Welcome back, $USERNAME! You have played $TOTAL_GAMES games, and your best game took $BEST_GAME guesses."
  done
fi
echo -e "Guess the secret number between 1 and 1000:"
read USER_GUESS
((TRIES++))
while [[ $USER_GUESS != $SCRIPT_RANDOM ]]
do
  if [[ "$USER_GUESS" =~ ^[0-9]+$ ]]; 
  then 
    if [[ $USER_GUESS > $SCRIPT_RANDOM ]]
    then
      echo -e "It's lower than that, guess again:"
      read USER_GUESS
      ((TRIES++))
    else
      echo -e "It's higher than that, guess again:"
      read USER_GUESS
      ((TRIES++))
    fi
  else
    echo "That is not an integer, guess again:"
    read USER_GUESS
  fi
done
USER=$($PSQL "SELECT * FROM users WHERE name = '$USERNAME'")
echo $USER | while read USER_ID BAR NAME
do
  if [[ $USER_GUESS == $SCRIPT_RANDOM ]]
  then
    INSERT_GAME=$($PSQL "INSERT INTO games(user_id, tries) VALUES($USER_ID, $TRIES)")
    echo -e "You guessed it in $TRIES tries. The secret number was $SCRIPT_RANDOM. Nice job!"
    exit
  fi
done
