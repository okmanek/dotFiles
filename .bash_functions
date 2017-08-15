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
  else
    TIME=$1
    sudo shutdown -h $TIME
  fi
}
