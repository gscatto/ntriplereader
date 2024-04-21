tests="$(find tests/* -type d)"
stdout=$(mktemp)
stderr=$(mktemp)
for t in $tests; do
    cat $t/stdin | ./ntriplesreader $(cat $t/starttoken) > $stdout 2> $stderr
    if ! diff -q $t/stderr $stderr; then
	diff $t/stderr $stderr
    fi
    if ! diff -q $t/stdout $stdout; then
	diff $t/stdout $stdout
    fi
done
rm $stdout $stderr
