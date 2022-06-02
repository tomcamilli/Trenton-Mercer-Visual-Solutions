# Trenton Mercer Visual Solutions

## by Effective Coding Solutions (ECS)
Sarah Hoffman (\@seafoambeige)
Thomas Camilli (\@tomcamilli)
Joseph Loggi (\@josephloggi)
Michael Williams
Zachary Rich (\@Zrich99)
Justin Wain (\@justinwain)

### Installation Instructions:

1) Clone this repository, and navigate into src.

2) Install Gem Dependencies:

```shell
bundle install
```

3) Install Needed Outside Dependencies:

Installing R:

```shell
sudo yum install -y R
```

Installing needed R packages:

```shell
R
install.packages('corrplot')
install.packages('ggplot2')
install.packages('ggrepel')
install.packages('Cairo')
q()
```
*these package names are case sensitive*

### Known Possible Issues and fixes:

Mimemagic issues: Run the following command:
```shell
bundle update mimemagic
```

Cairo Installation Issues: Run the following command in your normal terminal.
```shell
sudo yum install cairo-devel
```
Afterwards, attempt to install Cairo again, it should work.

FOR TCNJ VMS:
Sometimes when the server is running using cntrl C to exit the server may not work.
A fix is being developed, but the working hypothesis is that it is a runaway process.
As of now, the way to deal with this is: 
  1) Use top, htop, or your preferred method to get the process id of the puma process, and take a note of it. You may see multiple puma processes, this is a potential side effect of this error, and you need only take note of the first process id.
  2) Use a command, top, htop, or your preferred method to terminate this process. It is a cheat way to do this, but it is the best way to do so until a fix is determined.

### Important Notes:
When the R graph generation is occurring, R will print a lot of output on the terminal. This may seem overwhelming, but R generates this output while it is running.

NOTE: THIS PROJECT IS STILL UNDER DEVELOPMENT
