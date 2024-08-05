while [ true ]
do
  # Ask what user wants to do
  echo "Options: [sh]ow, [s]witch, [c]reate, and [d]elete"
  echo "What would you like to do?"
  read decision

  if [ ${decision} == "sh" ]; then
  # Show all branches
    git branch
  else
    git branch
    echo "Branch name? "
    read branch

    if [ ${decision} == "c" ]; then 
    git checkout -b $branch

    elif [ ${decision} == "s" ]; then
    git checkout $branch

    elif [ ${decision} == "d" ]; then
    git branch -D $branch

    fi
  fi

  echo "Are you done?"
  read done

  if [ ${done} == "y" ]; then
    break
  fi
done