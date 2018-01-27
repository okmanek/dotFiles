### c++-related ###
run() {
  g++ $1;
  ./a.out
  rm ./a.out
  # compiles cpp program, runs it and deletes binary file
  # usage: "run hello.cc"
  # TODO: ++ another argument to decide if it should delete the binary file
}

hello() {
  STR=$'#include <iostream>\n\nint main()\n{\n}'
  echo "$STR" > $1
}



### git related ###
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



### system related
quittt() {
  if [ -z $1 ]; then
    sudo shutdown -h now
  else
    TIME=$1
    sudo shutdown -h $TIME --no-wall
  fi
}

sus() {
  echo $@;
  if [ $# -eq 0 ]; then
    #close now if user did not give time
    echo "suspending now";
    sudo pm-suspend;
  else
    # close after n minutes (n specified by user
    echo -e "suspending after $1 seconds"
    sleep $1;
    sudo pm-suspend;
  fi
}



# Causes Scroll Lock to light backlight of my keyboard CM Storm Devastator
# works on Linux Mint and derivative distros
xmodmap -e 'add mod3 = Scroll_Lock'
