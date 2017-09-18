export CLICOLOR=1
export dev='dev11815.prn1.facebook.com'

#aliases
#Add colors for filetype and human-readable sizes by default on 'ls':
. .aliases

#dirsize - finds directory sizes and lists them for the current directory
dirsize()
{
du -shx * .[a-zA-Z0-9_]* 2> /dev/null | \
egrep '^ *[0-9.]*[MG]' | sort -n > /tmp/list
egrep '^ *[0-9.]*[M]' /tmp/list
egrep '^ *[0-9.]*G' /tmp/list
rm -rf /tmp/list
}
