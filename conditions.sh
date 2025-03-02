ID=$(id -u)
if [ ID -ne 0 ]
    echo"you have to be rooot user"
else
    echo"you are root user'
fi