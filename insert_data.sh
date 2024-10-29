#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi
# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
if [[ $YEAR != "year" ]]
then
  #query winner en opponent en kijk of ze al in de database zitten.
  TEAM_NAME_WINNER=$($PSQL "SELECT name FROM teams WHERE name = '$WINNER'")
  TEAM_NAME_OPPONENT=$($PSQL "SELECT name FROM teams WHERE name = '$OPPONENT'")

  if [[ -z $TEAM_NAME_WINNER || -z $TEAM_NAME_OPPONENT ]] 
  then
  if [[ -z $TEAM_NAME_WINNER ]]
  then 
  #insert team in de database
    INSERT_TEAM_NAME_RESULT=$($PSQL "INSERT INTO teams(name) values('$WINNER')");
    if [[ $INSERT_TEAM_NAME_RESULT == "INSERT 0 1"  ]]
    then
    echo "$WINNER inserted into the database"
    fi
  fi
  if [[ -z $TEAM_NAME_OPPONENT ]]
  then
    INSERT_TEAM_NAME_RESULT=$($PSQL "INSERT INTO teams(name) values('$OPPONENT')");
    if [[ $INSERT_TEAM_NAME_RESULT == "INSERT 0 1"  ]]
    then
    echo "$OPPONENT inserted into the database"
    fi
  fi
  fi
fi 
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  #get winner_id 
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  #get opponent_id 
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

  #insert all data
  INSERT_ALL_DATA_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values('$YEAR', '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)");
  echo $INSERT_ALL_DATA_RESULT

done