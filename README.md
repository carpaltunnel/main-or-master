# main-or-master
Simple shell script function for checking out "main" branch or "master" branch when the company you work for can't settle on just one across all repos.

This function will first try to `git checkout main` and, if that fails, it will then try to `git checkout master`.  You can, of course, reverse the order if you have more repos that use `master` branch than repos that use the `main` branch.

This is ~~super~~ somewhat helpful when you work across many repositories where some use a default branch of `main` and some use a default branch of `master`... saves you a little time and frustration : )

**NOTE**: To keep things super fast and simple, this is not capturing the STDERR of the commands so it has a somewhat verbose output.  For example, this is the output of invoking `morm` when I already have the `master` branch checked out.

```
$ morm
error: pathspec 'main' did not match any file(s) known to git
'main' branch did not exist, trying 'master' ...
Already on 'master'
Your branch is up to date with 'origin/master'.
```


## How to Use
1. Copy the `function morm() {}` and its contents to your `rc` file (`.bashrc`, `.zshrc`, etc)
2. Reinit your shell or open a new one
3. Whenever you want to checkout the `main` branch (or `master` as a fallback), simply run `morm`. 