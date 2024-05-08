# create folders for each ctf category
# get CTF_NAME as argument
# usage: ./make.sh CTF_NAME
# example: ./make.sh ZeroDays

# check if argument is passed
if [ -z "$1" ]; then
    echo "Usage: ./make.sh CTF_NAME"
    exit 1
fi

# set CTF_NAME and create folder
CTF_NAME=$1
mkdir -p $CTF_NAME
cd $CTF_NAME

# create folders for each category
CATEGORIES="crypto forensics misc pwn reversing web"
for category in $CATEGORIES; do
    mkdir -p $category
    touch $category/README.md
done
