# Apache-configure
![mm](https://img.shields.io/badge/Maintained-yes-green)

[![HitCount](http://hits.dwyl.com/thelearn-tech/Apache-configure.svg)](http://hits.dwyl.com/thelearn-tech/Apache-configure)

Configure your apache2 Web server ,for termux

When you install apache2 in termux,you need to configure it,
to make it work properly

**Install.sh  is modified by [HiFiiDev](https://github.com/HiFiiDev)**
He created a more beautiful script than me.

           
# Automatic configuration

***git clone https://github.com/thelearn-tech/Apache-configure***

***cd Apache-configure***

***chmod +x install.sh***

***./install.sh***


# Apache2 configuration manual
Just follow the steps--

```
nano /data/data/com.termux/files/user/etc/apache2/httpd.conf

```
         
now scroll down to `Listen 8080`

(Use ctrl+f to move cursor forward and ctrl+b to backwards)
(Use arrow keys ,if you have , like I do)

![alt text](https://i.ibb.co/wgz0Sf4/Polish-20201102-082837952.jpg)

And change ***Listen 8080*** to 
***Listen 0.0.0.0:8080***

![alt text](https://i.ibb.co/GVjkJvW/Polish-20201102-082555154.jpg)

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
# Visiting server 

  When Apache server is running you can go to
  ***http://localhost:8080*** or ***http://127.0.0.1:8080***
  
Or you can use your public IP address for example **http://168.198.0.1:8080**

Type **ifconfig** in you termux to get your IP or go to you settings

**If you copy don't forget to give me credit**



