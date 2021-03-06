# Simple functions that are basically aliases

function ... -d 'Go up 2 dirs'
	cd ../..
end

function .... -d 'Go up 3 dirs'
	cd ../../..
end

function ..... -d 'Go up 4 dirs'
	cd ../../../..
end

alias b brew

alias cl 'wc -l'

function cloc -d 'Count Lines of Code (except node_modules)'
  command cloc --exclude-dir=node_modules $argv
end

function code -d 'Go to ~/code'
	cd ~/code
end

function cx -d 'Make file executable'
	chmod +x $argv
end

function d -d 'Go to Dropbox'
    cd ~/Dropbox
end

function dl -d 'Go to Downloads'
    cd ~/Downloads
end

function fn -d 'Shorthand for (functions)'
  functions $argv
end

function g -d 'Alias for (git)'
    git $argv
end

# Shorthand for all the common HTTP methods
for method in GET HEAD POST PUT DELETE TRACE OPTIONS
    # Using backwards-compatible alias syntax in Fish
    alias $method "lwp-request -m $method"
end

function grunt -d 'Grunt (with stack traces)'
    command grunt --stack $argv
end

function gs -d 'Concise (git status)'
    git status -sb
end

function l -d 'List files'
    ll $argv
end

function lsa -d 'List all files in short format'
  ls -aFG $argv
end

function lsd -d 'List only directories'
  ls -l $argv | grep "^d" --color=never
end

function map -d 'Intuitive map function'
 xargs -n1 $argv
end

function nout -d 'npm outdated --depth=0'
  npm outdated --depth=0 $argv
end

function nr -d 'npm run alias'
  npm run $argv
end

function pgl -d 'Find matching running processes'
	pgrep -lf $argv
end

function rf -d 'Remove recursively—careful!!!'
	rm -rf $argv
end

function urlencode -d 'URL-encode strings'
    python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);" $argv
end
