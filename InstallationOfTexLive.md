# The Installation of TexLive

## Windows10 or Higher
1. Go to the official website of [texlive](https://tug.org/texlive/acquire-iso.html) and choose the "download from a nearby CTAN mirror" selection. It will be automatically choose a mirror which best fits your network.
2. When the download is complete, open the ISO file directly with administrator permission(Right click-Run as administrator) and execute the "install-tl-windows.bat" batch file.
3. Then, you can see the interface like this:



![v2-5ef2bc405c5eb22e4d775c747eb141df_720w.jpg](:/3698061c7b3e4219ad50d05599748c12)

remember to unselect the "Install TeXworks front end" selection. We have some better editor than TeXworks. 

4. Click the "Install" button and waitting for it!
But there are something you should pay attention to:
- There is no Chinese allowed in your username, which has been vertified that it will cause some problems during your installation.
solution: [Here](https://blog.csdn.net/Viavia99/article/details/115915918)
- You should check the md5 or the sha512 of the ISO. The incomplete download may lead to some errors unexpected.
* * *
## Linux

The easiest way to install texlive in Linux is using your system's package manager. For example:
- Debian, Ubuntu...
`sudo apt-get install texlive-full`
- RedHat, CentOS...
`sudo yum groupinstall tex support`
`sudo yum install texlive*`
- ...

The installation is much easier in Linux than Windows. Having fun with using Linux ;-). But remeber to install fonts in your system.