# Lets Learn Shell Scripting

echo "Default Shell is: $SHELL"

#Note: When assigning a value to a variable in Bash, there should be no spaces around the = sign.
name="User"
echo "$name"

#ReadOnly
readonly COUNTRY="India"
echo "Our country is $COUNTRY"

#User Input
read -p "Enter your salary: " salary

#Conditionals
if [ $salary -ge 100000 ]; then
echo "Rich"
else
echo "Work hard"
fi

#Multiple if-else
read -p "Enter a number: " numb

if [ $numb -ge 0 ]; then
echo "Positive"
elif [ $numb -lt 0 ]; then
echo "Negative"
else
echo "It's zero"
fi

#Operators
a=10
b=5
echo "Addition is $((a+b))"

#Casing
read -p "Enter any choice from (start/stop/restart) :" choice
case $choice in
start)
echo "Start here"
;;
stop)
echo "Stop here"
;;
restart)
echo "Restart"
;;
*)
echo "Default"
;;
esac

#Loop
for i in {1..5}; do
echo "Welcome $i"
done

#While Loop
count=1
while [ $count -lt 5 ]
do
echo "Hi $count"
((count++))
done

#Experssion
result=$((10 * 2))
echo "Expression result: $result"   #Note: (()) is used to perform operation and $ is used to assign the value to the variable after the operation

#Script Name
echo "Script name is: $0"

#Function

welcome(){
echo "Welcome $1"
}
welcome "$name"

#Script Arguments
echo "First argument: $1"
echo "Total arguments: $#"
echo "All arguments: $@"
echo "Last argument: $_"

#String Operations
userName="John Jack"
#Substitution & Replace
echo "Substitution J -> j: ${userName/J/j}"
echo "Replace all J -> j: ${userName//J/j}"

#Slicing(Left to Right)
echo "${userName:0:2}"   #0 start index and length is 2
echo "${userName::2}"    #by deafult 0 is start index

#Remove last character
echo "${userName::-1}"

#Slicing from right
echo "${userName:(-2):2}"

#String Manipulation
str="Hello world"
echo "${str,}"  #Lowercase 1st Letter
echo "${str,,}" #Lowercase all
echo "${str^}"  #Uppercase 1st Letter
echo "${str^^}"  #Uppercase all
