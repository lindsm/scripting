# When those developers give me directories that have mac foot prints all over them, this will remove them from current directory and all subs.

find . -iname '*.DS_Store' -type f -delete
