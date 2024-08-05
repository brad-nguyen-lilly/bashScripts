echo "prettier?"
read prettier

if [ $prettier == "y" ]; then
  yarn prettier . --w;
fi

echo "where is root folder dir?"
read dir;

echo "adding all changes to commit"
git add ${dir};

echo "message:"
read msg

echo "commiting"
git commit -m "${msg}"

echo "push?"
read push

if [ $push == "y" ]; then
  git push;
fi

echo "done"