ID=$(id -u)
if [ ID -ne 0 ]
then
    echo"you have to be rooot user"
else
    echo"you are root user"
    
fi

sudo yum install nginx -y

systemctl enable nginx

systemctl start nginx
