# Debian Setup Bash File
Just a repo for all my various setup scripts...

## Default
 Installs the following:
 
  - Python
  - Pip 
  - Git
  - Nodejs
  - VS code

## Windows
Have added a script to generate a `package.config` file fro Chocoatey. Also have a recent `package.config` file that captures my current machine state.

[TODO]: Create a process that regualrly updates the package.config file by running the powershell script and pushing to git.

# Usage

On linux, download `default.sh` then run

```
sudo chmod 777 ./default.sh
```
And then 

```
sudo ./default.sh
```
You may need to stick around to say yes to some prompts, I guess that's another [TODO]. 

On windows just cry
