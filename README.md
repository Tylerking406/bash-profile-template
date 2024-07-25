# BashProfile

This repository is dedicated to creating a dynamic and efficient `.bash_profile` that is synchronized with a version-controlled repository. The aim is to streamline the setup of your shell environment, making it both personalized and portable. Below is an overview of the features and instructions on how to use.

## Features

- **Aliases and Functions**: Organized alphabetically for easy navigation, the project includes a variety of aliases and functions to speed up daily tasks.
- **Browser Bookmarks**: Shortcuts for opening browser bookmarks directly from the terminal.
- **Code Folding**: Support for folding and unfolding sections of the bash profile, allowing for a cleaner and more manageable view.
- **Custom Terminal Appearance**: Utilizes the `PS1` environment variable to customize the terminal prompt, providing a clean and informative terminal look.
- **Easy Editing and Synchronization**: With the alias `e`, users can quickly open the repository for editing in VSCode (or configure your own text-editor). The `push-bash-profile` and `pull-bash-profile` commands are provided to synchronize the `.bash_profile` with the repository, ensuring your configurations are backed up and can be shared across machines.
- **Initialization Script**: Includes an initialization script that links the `~/.bashrc` file with the repository's `.bashrc`, ensuring your shell environment is always up-to-date with the latest configurations.
- **Repository Navigation**: Direct navigation to specific repositories using custom shortcuts, making it quicker to access your projects.

## Getting Started

1. **Clone the Repository**: Start by cloning this repository to your local machine.
2. **Remove Existing Git Configuration**: Navigate into the cloned repository directory and remove the existing `.git` folder to disconnect from the original git history. Then, initialize a new git repository and add your own remote.
cd path/to/cloned/repository
rm -rf .git
git init
git remote add origin <your-repository-url>
3. **Run the Initialization Script**: Execute the initialization script to link your `~/.bashrc` or `~/.bash_profile` with the repository's configurations.
4. **Explore and Customize**: Browse through the aliases and functions. For personal customizations, such as adding your own functions or aliases, please use the `.bash_profile_personal`. This approach ensures that the `.bash_profile` remains a shared template, consistent across users, while `.bash_profile_personal` allows for individual customizations that vary from person to person.
5. **Synchronize Changes**: Use `push-bash-profile` to upload your changes to the repository or `pull-bash-profile` to fetch the latest updates.