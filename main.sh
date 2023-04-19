#!/bin/bash
function direcs () {
echo "1. create dirs"
cd ~
mkdir -p BIG/{food/{Crocs,kingstore,BBB},market/{mega,shufersal}}
echo "2. use tree"
tree BIG
echo "3. go to kingstore"
cd BIG/food/kingstore
echo "4. move kingstre to market in relative"
mv ../kingstore ../../market/
tree ~/BIG
echo "5. rename crocs to rebar in abs"
mv ~/BIG/food/Crocs ~/BIG/food/rebAR
echo "6. Create files BBBisMyWorld and BBBUrger under BBB subdir."
touch ~/BIG/food/BBB/BBBisMyWorld
touch ~/BIG/food/BBB/BBBUrger
echo "7. insert text to bbburger"
echo "BBB is Junk but Tasty with a lot of sauce" > ~/BIG/food/BBB/BBBUrger
echo "8. copy content "
cat ~/BIG/food/BBB/BBBUrger > ~/BIG/food/BBB/BBBisMyWorld
echo "9. inser text"
echo -e "A hamburger, or simply burger, is a food consisting of
fillings—usually a patty of ground meat, typically beef—placed
inside a sliced bun or bread roll. Hamburger are often served
with cheese, lettuce, tomato, onion, pickles or chilis;
condiments such as ketchup, mustard, mayonnaise, relish, or a
\"special sauce\", often a variation of Thousand Island dressing;
and are frequently placed on sesame seed buns. A hamburger topped
with cheese is called a cheese burger." >> ~/BIG/food/BBB/BBBUrger
echo "10. count words burger"
cat ~/BIG/food/BBB/BBBUrger | grep -wc burger
echo "11 remove big directory"
rm -rvf ~/BIG
echo "display cpu model name"
lscpu | grep "Model name"
}
