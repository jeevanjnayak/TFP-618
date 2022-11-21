#!/bin/bash -x

declare -A animalSound

animalSound[dog]="barks"
animalSound[cats]="meow"
animalSound[cow]="moo"
animalSound[jackle]="howl"
animalSound[hen]="cuckoo"

echo "all the sounds ${animalSound[@]}"
echo "all the animals ${!animalSound[@]}"
echo ${animalSound[cats]}
echo ${#animalSound[@]}
animalSound[hen]="something"
unset animalSound[cats]
echo "all the sounds ${animalSound[@]}"
echo ${#animalSound[@]}
