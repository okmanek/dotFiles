run() {
  g++ $1;
  ./a.out
}

hello() {
  STR=$'#include <iostream>\n\nint main()\n{\n}'
  echo "$STR" > $1
}

suspend() {
  TIME=$1;
  TIME=$(($TIME * 60));
  sleep $TIME;
  systemctl suspend
  #sleep 5 && systemctl suspend & ???
}

shutdown() {
  if [ -z $1 ]; then
    sudo shutdown -h now
#else
#TIME=$1
#sudo shutdown -h $TIME
  fi
}

#git stash->pull->pop (if there is sth to stash, else just pull)
gspp() {
  LINES=`git diff HEAD | wc -l`
  echo "number of lines different from HEAD: $LINES"
  if [ $LINES -gt 0 ]; then
	git stash
	git pull
	git stash pop
	echo "git stasher completed: stashed, pulled, popped"
  else
	git pull
	echo "git stasher completed: pulled"
  fi
}

gg() {
  #toLowercase=${1,,}
  #echo $1
  #echo $toLowercase
  if [[ $1 = $toLowercase ]]; then
  grep -i "$2"
  else
  grep "$2"
  fi
}
