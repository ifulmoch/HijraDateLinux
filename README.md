# Hijra Date for Linux
Display Hijra date for Linux in a file. Use it with Conky. These short tutorial will inform you how to use it with Conky.

<h2>How to Use</h2>
Step 1 : Install Conky
Conky is a Linux application that display information such as disk space, memory used, internet speed, system date and many more. To install Conky with latest Linux, open your Terminal and type "sudo apt-get install conky" without quote.

Step 2 : Add Startup Program for Conky
Open your Startup application manager, make 2 startup entry: one for Conky and 1 again for this hijra date. Insert these command below :
conky -d -c ~/.conkyrc
sh .hijridate.sh

Step 3 : Install Hijra Date for Linux
Copy the 2 files "conkyrc" also "hijradate.sh" provided to your home directory.
