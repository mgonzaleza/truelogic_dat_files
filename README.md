## Challenge
1. Given a "weather data" file, write a program to output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, the minimum the third column).
2. Given a "soccer data" file, write a program to print the name of the team with the smallest difference in ‘for’ and ‘against’ goals.

## Before you start

#### Installing Ruby

If you do not have Ruby installed on your system, follow the instructions below to install it.

#### Prerequisites

Before installing Ruby, ensure that you have the following prerequisites installed on your system:

- **For Windows**: [Git](https://git-scm.com/) (for Git Bash) or [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install) (for a more Linux-like experience).
- **For macOS**: Xcode Command Line Tools (can be installed via `xcode-select --install`).

#### Installation Steps

**Windows**

1. **Download Ruby Installer**
   - Visit the [RubyInstaller for Windows](https://rubyinstaller.org/) website.
   - Download the latest version of RubyInstaller (e.g., Ruby+Devkit).

2. **Run the Installer**
   - Execute the downloaded `.exe` file.
   - Follow the prompts and make sure to select the option to install the MSYS2 development toolchain when prompted.

3. **Verify Installation**
   - Open a new command prompt or Git Bash and run:
     ```bash
     ruby -v
     ```
   - You should see the Ruby version number.

**macOS**

1. **Install Homebrew**
   - Open Terminal and run:
     ```bash
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     ```

2. **Install Ruby**
   - After Homebrew is installed, run:
     ```bash
     brew install ruby
     ```

3. **Update Your Shell Configuration**
   - Add the following line to your shell configuration file (`~/.zshrc` or `~/.bash_profile`):
     ```bash
     export PATH="/usr/local/opt/ruby/bin:$PATH"
     ```
   - Then, apply the changes by running:
     ```bash
     source ~/.zshrc  # or source ~/.bash_profile
     ```

4. **Verify Installation**
   - Run:
     ```bash
     ruby -v
     ```
   - You should see the Ruby version number.

## To run the scripts
### Soccer
```ruby
ruby soccer_calculator.rb
```

**Output**
```bash
The team with the smallest difference in 'for' and 'against' goals is: Aston_Villa.
```

### Weather
```ruby
ruby weather_calculator.rb
```

**Output**
```bash
The day with the smallest spread is day number: 14
```
