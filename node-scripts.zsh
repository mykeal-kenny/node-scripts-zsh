# package.json location
pkgJson=$PWD/package.json
# package-lock.json location
pkgLock=$PWD/package-lock.json
# yarn.lock location
yarnLock=$PWD/yarn.lock
# node_modules directory location
nodeModules=$PWD/node_modules
# Install funtions
function npmInst(){ npm install } # npm
function yarnInst(){ yarn } # yarn

# Get Scripts
SCRIPTS=(`python3 -c "pkg = \"package.json\"; tab=\"    \"; nl=\"\n\"; exec(f'import os{nl}import json{nl}import sys{nl}with open(os.path.join(sys.path[0], pkg), \"r\") as f:{nl}{tab}arr = json.load(f)\n{tab}scripts = arr[\"scripts\"]{nl}{tab}scriptList = list(scripts.keys()){nl}{tab}for script in scriptList:{nl}{tab}{tab}print(script)')"`)

# check for command installations
function checkCmd(){
if [ -x "$(command -v $1)" ]; then
return true
fi
}
function cmdTest(){
if [ -x $(checkCmd 'node') ]; then
if [ -x $(checkCmd 'python3') ]; then
return True
fi
}
function npmOrYarn(){
    if [ -f $yarnLock ]; then
        if [ -x $(checkCmd 'yarn') ]; then
        return True
        else
    echo "This repo uses Yarn and it's not installed on this computer."

}
# this is supposed to help node developers afterall
checkCmd "node" # check for node
checkCmd "python3" # check for python3, required for this to work

# check for package.json file
function checkPkg(){
if [ -f "$pkgJson" ]; then
# run checkModules
checkModules
else
echo ""
fi
}

function checkModules(){
if [ -d "$node_modules" ]; then
echo "installed!"
fi
}
checkPkg

function getScripts(){
    node 
}
## if package.json is found
# verify it is functional json

# read package.json into node
# parse out the scripts section
# check for node_modules folder

# 