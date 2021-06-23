declare \
  COL_BLUE='' \
  COL_CLEAR='' \
  COL_CYAN='' \
  COL_GRAY='' \
  COL_GREEN='' \
  COL_MAGENTA='' \
  COL_RED='' \
  COL_YELLOW=''

color-on() {
  COL_BLUE="\033[34m"
  COL_CLEAR="\033[0m"
  COL_CYAN="\033[36m"
  COL_GRAY='\033[1;30m'
  COL_GREEN="\033[32m"
  COL_MAGENTA="\033[35m"
  COL_RED="\033[31m"
  COL_YELLOW="\033[33m"
}

color-off() {
  COL_BLUE=''
  COL_CLEAR=''
  COL_CYAN=''
  COL_GRAY=''
  COL_GREEN=''
  COL_MAGENTA=''
  COL_RED=''
  COL_YELLOW=''
}

color-term-supports() {
  [ "${TERM:0:5}" = 'xterm' ]
}

color-auto() {
  if color-term-supports; then
    color-on
  else
    color-off
  fi
}

color-auto
