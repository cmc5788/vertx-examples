cd ${0%/*}
curdir=${PWD##*/}
./gradlew shadowJar
cd build/libs
kill $(pgrep -f $curdir)
sleep 5
exec -a $curdir java -jar $(ls) &
