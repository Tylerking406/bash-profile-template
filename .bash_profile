# Environment Variables
export TRASH=~/trash/
export VISUAL=code
source $DirectoryRepos/bash-profile/.bash_profile_env
source $DirectoryRepos/bash-profile/.bash_profile_browser
source $DirectoryRepos/bash-profile/.bash_profile_personal
if [[ "$GOOGLE_CLOUD_WORKSTATIONS" == "true" ]]; then
  source /etc/bash_completion.d/git-prompt 
fi

# Terminal Upgrade
branch='`__git_ps1`'
PS1="\n\[\033[1;31m\]  \w$(tput setaf 0) $branch \n\[$(tput setaf 2)\]λ  \[\033[0m\]"

# *****
# 00000
# 11111
# 22222
# 33333
# 44444
# 55555
# 66666
# 77777
# 88888
# 99999
# AAAAA
# BBBBB
alias b="cd .."
# CCCCC
alias clr="command clear"
code() {
  if [[ "$GOOGLE_CLOUD_WORKSTATIONS" == "true" ]]; then
    code-oss-cloud-workstations $1
  else
    command code $1
  fi
  }
curl-go-template-infrastructure() {
  post local /create ABC Value \"ABC\"
  }
curl-go-template-infrastructure-cloudrun() {
  post cloudrun /create ABC Value \"ABC\"
  }
curl-go-template-infrastructure-gae() {
  post gae /create ABC Value \"ABC\"
  }

# DDDDD
# EEEEE
e() {
	if [ -z "$1" ]
	then
	    cd-bash-profile && code .bash_profile &
	else
	    code $1 &
	fi
  }

# FFFFF
f() {
  grep -R "$1" *
  }
ff() {
    find . -name $1
  }
fr() {
  if [[ "$DirectoryRepos/bash-profile" == "/home/user/bash-profile" ]]; then
    source ~/.bashrc
  else
    source ~/.bash_profile
  fi
  }
# GGGGG
# HHHHH
# IIIII
# JJJJJ
# KKKKK
# LLLLL
alias l="ls"
alias la="ls -la"
# MMMMM
# NNNNN
# OOOOO
# PPPPP
post() {
  if [ "$#" -lt 4 ]; then
    echo "Usage: post [environment] [endpoint] [namespace] [variadic-json-body-key-value]"
    echo "post local /create agd-internal A 10 B 20" | clip.exe
    return 1
  fi

  # Get URL
  url_base="${urls[$1]}"
  if [ -z "$url_base" ]; then
    echo "Error: URL base not found for key '$1'."
    return
  fi
  echo $url_base

  # Extract other parameters
  endpoint="$2"
  namespace="$3"

  # Construct final URL
  final_url="${url_base}${endpoint}?ns=${namespace}"
  echo "Final URL: $final_url"

  # Generate JSON payload from variadic parameters
  json_payload="{"
  shift 3
  while [ "$#" -gt 1 ]; do
    json_payload+="\"$1\": $2,"
    shift 2
  done
  json_payload="${json_payload%,}}"
  echo "JSON payload: $json_payload"
  
  # Make POST request using curl and print response
  echo "curl -X POST -H \"Content-Type: application/json\" -d \"$json_payload\" \"$final_url\""
  curl -X POST -H "Content-Type: application/json" -d "$json_payload" "$final_url"
  }
# QQQQQ
# RRRRR
alias rep="cd $DirectoryRepos"
r() {
    if [ -z "$1" ]; then
        echo "expected 1 value"
        return
    fi
    if [ ! -d "$TRASH" ]; then
        echo "The trash directory does not exist. Please create it using: mkdir -p $TRASH"
        return
    fi
    now=$(date +"%D-%T")
    now=$(echo $now | sed "s/\//:/g")
    binPath=$TRASH
    echo $binPath
    destination=$binPath$now
    mkdir $destination
    echo $1 >> $destination/command.txt
    mv $1 $destination
    echo "deleted $1"
  }
# SSSSS
# TTTTT
alias trash="cd $TRASH"
alias trash-create="mkdir -p $TRASH"
alias trash-empty="rm -rf $TRASH/* && echo 'emptied trash'"
# UUUUU
declare -A urls=(
  ["local"]="localhost:8080"
  ["cloudrun"]="https://go-template-infrastructure-5rgisb4ctq-uc.a.run.app"
  ["gae"]="https://grant-wilson.uc.r.appspot.com"
  )
# VVVVV
# WWWWW
# XXXXX
# YYYYY
# ZZZZZ
