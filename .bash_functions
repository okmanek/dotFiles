run() {
  g++ $1;
  ./a.out
}

hello() {
  STR=$'#include <iostream>\n\nint main()\n{\n}'
  echo "$STR" > $1
}
