# Hijra Date for Linux
Display Hijra date for Linux in a file. Use it with Conky. These short tutorial will inform you how to use it with Conky.

<h2>How to Use</h2>

Step 1 : Install Conky <br />
Conky is a Linux application that display information such as disk space, memory used, internet speed, system date and many more. To install Conky with latest Linux, open your Terminal and type <b>"sudo apt-get install conky"</b> without quote.

Step 2 : Add Startup Program for Conky <br />
Open your Startup application manager, make 2 startup entry: one for Conky and 1 again for this hijra date. Insert these command below : <br />
conky -d -c ~/conkyrc <br>
sh hijradate.sh

Step 3 : Install Hijra Date for Linux <br />
Copy the 2 files "conkyrc" also "hijradate.sh" provided to your home directory. Restart your computer and make sure your internet connection available when you logged in. If you use dial up connection you can set your hijradate startup program will be run after minutes.
<br />
Enjoy!
