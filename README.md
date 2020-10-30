# Apache-configure
Configure your apache2 Web server ,for termux

When you install apache2 in termux,you need to configure it,
to make it work properly

# Apache2 configuration
Just follow the steps--

***cd /data/data/com.termux/files/user/etc/apache2***

***ls***

         
(Typing **ls** will show a file called **httpd.conf**)
  (We need to edit that)

So
***nano httpd.conf***

![alt text](https://i.ibb.co/Y2J0Fqr/nano-httpd-conf.jpg)

now scroll down to ***Listen 8080***

(Use ctrl+f to move cursor forward and ctrl+b to backwards)
(Use arrow keys ,if you have , like I do)

![alt text](https://i.ibb.co/S5XfQd6/Listen-8080.jpg)

And change ***Listen 8080*** to 
***Listen 0.0.0.0:8080***

![alt text](https://i.ibb.co/Wxn2Rp4/IMG-20201030-114700.jpg)

And scroll down even more
To 
![alt text](https://i.ibb.co/D4qCJP4/IMG-20201030-114757.jpg)

Now changed ***index.html*** to ***htdocs***

![alt text](https://i.ibb.co/CVYRcJd/IMG-20201030-114731.jpg)
Now
***ctrl x***

then ***y***

And **enter**

So configuration is done
# putting you own stuff
To put your own stuff ,move that file or folder with ***mv***

So ***mv (folder/file) /data/data/com.termux/files/usr/share/apache2/default-site/htdocs***

So your server at 127.0.0.1:8080 or localhost:8080

Will look like 
![alt text](https://i.ibb.co/58NbbP7/IMG-20201030-112202.jpg)

# changing directory for hosting

Default directory is /data/data/com.termux/files/usr/share/apache2/default-site/htdocs
You can change in ***httpd.conf*** file

***cd /data/data/com.termux/files/usr/etc/apache2***

***nano httpd.conf***

Scroll down to 
![alt text](https://i.ibb.co/613bWfk/IMG-20201030-114638.jpg)
Change **DocumentRoot** to your like ,as I have

And **Directory** to same as **DocumentRoot**

# warning
 Try my custom command for apache
https://github.com/thelearn-tech/apache-custom-command


**If you copy don't forget to give me credit**



