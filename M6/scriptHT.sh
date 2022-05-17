#!/bin/bash
#!/bin/bash
all_key_var="--all"
target_key_var="--target"

function print_keys_func
{
echo "The --all key displays the IP addresses and symbolic names of all hosts in the current subnet"
echo "The --target key displays a list of open system TCP ports."
}

function all_key_func
{
nmap -sn  192.168.0.0/24
}

function target_key_func
{
netstat -tulnp | grep LISTEN
}

echo  Number of parametrs "$#"

if [ -n "$1" ]
then
echo "You are used $1."
if [ "$1" == "--all" ]
then
all_key_func
elif [ "$1" == "--target" ]
then
target_key_func
fi
else
echo "No parameters found. "
echo "You can use next:"
print_keys_func
fi
