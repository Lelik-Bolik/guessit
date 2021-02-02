# Contributor's guide

## Overview

1. Fork the repository on GitHub ([How to setup](#setup-a-working-environment))
2. If there is no issue covering the work you'll be doing (and it's not trivial), [file an issue](#how-to-file-issues) to describe the task you'll be doing.
3. Create a new branch out of main, implement your solution and open a pull request ([Using git](#using-git)).

### Important notes

- Do not push directly to the original repo.
- Any PR must be reviewed and wait for a LGTM (Looks Good To Me). Do not review and merge your own PR.
- If you are not familiar with git, ask for help. Do not use any `--force` commands.

## Setup a Working Environment

1. Fork the [repo](https://github.com/ADVavvas/guessit) on GitHub (upper right corner)
2. Clone your own repo ([https://github.com/\<user\>/guessit](https://github.com/)) (`git clone https://github.com/<user>/guessit` for https)
3. `cd guessit`
4. Add the original repo as remote: `git remote add upstream git@github.com:ADVavvas/guessit.git`
5. Done

## How to file issues

Issues can be filed by going to the `issues` tab on Github.

Issues must be as informative as possible, and appropriate labels must be used.

You should also try and find any existing issues that match what you want to report before opening a new issue.

For issues regarding bugs steps-to-recreate should be provided.

As of now there is no issue template.

## Using git

After you've setup a working environment you can follow these steps to start working on an issue

1. `git fetch upstream`
2. `git checkout upstream/main -b name_of_your_branch`
3. Code
4. `git add <files you've changed>`
5. `git commit -m "<your informative commit message>"`
6. `git push origin <name_of_your_branch>`
7. Go to [https://github.com/\<user\>/guessit](https://github.com/) and file a PR.

### Important notes

- Do not push directly to the original repo.
- Any PR must be reviewed and wait for a LGTM. Do not review and merge your own PR.
- If you are not familiar with git, ask for help. Do not use any `--force` commands.
- Commit messages and branch names must be informative, not random. (*cough* SWP *cough*)

## Testing

TBD
