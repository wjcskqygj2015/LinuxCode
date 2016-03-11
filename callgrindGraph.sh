if [ "$2" = "gcc" ]
then
gcc -pg -o $1.out $1
else
g++ -pg -o $1.out $1
fi
./$1.out
valgrind --tool=callgrind ./$1.out
find -name "callgrind.out.*" | xargs gprof2dot.py -f callgrind > $1.dot
find -name "callgrind.out.*" | xargs rm
rm $1.out
dot -Tsvg $1.dot -o $1.svg
xdot $1.dot


