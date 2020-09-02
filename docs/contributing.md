Contributing
============

## Contributing Guidelines
Thank you for your interest in helping us with the MD2K software platforms. We always welcome new contributions in any form including:

- Bug reports ([JIRA](https://md2korg.atlassian.net/issues/?filter=-4&q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc)) regarding the software, documentation, website, etc.
- Documentation improvements, tutorials, examples
- Code patches and new features

## Getting started
Please join and explore our [discussion board](https://discuss.md2k.org/). This is where all of our public discussions occur regarding the MD2K software projects.

## How can I help
We try to keep all open issues for MD2K software posted on [JIRA](https://md2korg.atlassian.net/issues/?filter=-4&q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc), but please ask on the discussion site before starting to work on any issues in order to maximize the impact of your work.

## Code contribution process

While contributing to any MD2K software modules, you will encounter a variety of coding styles, frameworks, and principles. You should try to follow the existing code model to help make the code easily readable and understandable. The most important thing to do is to communicate with the development teams throughout the whole process.

## Before you start working on a new idea or feature
Most new ideas and features should be brought up in the [discussion board](https://discuss.md2k.org/) to help both you and the MD2K team make the most effective use of time and efforts. After discussion, a JIRA issue will be created if needed.

## Creating the contribution as a GitHub Pull request
MD2K utilizes [GitHub’s Pull Request](https://help.github.com/articles/using-pull-requests/) as the primary mechanism to accept changes. An example workflow follows this model: fork the specific MD2K software repository, make your changes, and send a pull request.

1. Fork a MD2K repository
2. Create a branch
3. Make changes on your local machine
4. Merge the master branch into your branch
5. Push commits into your remote forked repository
6. Send pull request to the MD2K team
7. After a pull request, one of the MD2K team members will review and may request additional changes before merging

## Fork repository
Go to the appropriate [GitHub repository](https://github.com/MD2Korg/) and click the “Fork” button to have your own copy. Clone this onto your local machine:

```{code-block} bash
$ git clone https://github.com/[YOUR_GITHUB_ID]/[REPOSITORY_NAME].github
```

Add a remote upstream to your repository:

```{code-block} bash
$ git remote add upstream https://github.com/MD2Korg/[REPOSITORY_NAME]
```
Configure your name and email if necessary:

```{code-block} bash
$ git config user.name "FirstName LastName"
$ git config user.email email@domain.com
```

## Create a branch to work with
Ensure that the issue you are going to solve is allocated and assigned in the [JIRA](https://md2korg.atlassian.net/issues/?filter=-4&q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc) issue tracker. Create a branch to address the issue and the name should reference the JIRA issue. Example: mC-[ISSUE NUMBER] or CC-[ISSUE NUMBER]

## Make local changes

Write code and make commits and usual. Code should contain appropriate licensing in headers and ensure that existing tests pass.

## Merge the master branch into your branch
Prior to sending a pull request, you should ensure that your branch contain the latest changes. Run the following:

```{code-block} bash
$ git fetch upstream
$ git checkout [YOUR_BRANCH] # Skip the step if you are already on your branch
$ git merge upstream/master
```

Please resolve all conflicts that arise and test your merged code so that it does not break anything.

As a courtesy to the merger, you should rebase to master and squash all the commits from your PR into one:

Rebase
```{code-block} bash
$ git rebase -i upstream/master
````

In the rebase process, make sure that the contribution is squashed to a single commit. From the lit of commits, “pick” the commit in the first line (the oldest), and “squash” the commits in the remaining lines:

```{code-block} bash
pick 7387a49 Comment for first commit
squash 3371411 Comment for second commit
squash 9bf956d Comment for third commit
```

For more information, please see [Chapter 3](http://www.git-scm.com/book/en/v2/Git-Branching-Rebasing) and [Chapter 4](http://git-scm.com/book/en/v2/Git-Tools-Rewriting-History) of the [Git Book](http://www.git-scm.com/book/en/v2).

During this process, Git will allow you to edit the commit message for the final, squashed commit and it will serve as the description of the pull request. A common template for the commit message is:

[JIRA_TRACKER_ISSUE_NUMBER] Title of the tracker issue

Description of issues addressed:
- Something   
- Something else
- ...

## Push commits into your remote repository
Push your commits to GitHub.

```{code-block} bash
$ git push origin head
```

## Send a pull request
Please read [additional information](https://help.github.com/articles/using-pull-requests/)  about pull requests. Go to your repository on the GitHub website and click the button “Compare & Pull request”. You will be given an option to choose which branches to compare and merge, choose the base as the MD2Korg repository master branch and the head as [your_alias]:[branch_name]. Feel free to edit the description with more details.

When finished, please update the JIRA issue with a link to the Pull Request to alert the MD2K team to start a code review process.

## Code review
We utilize the GitHub commenting system on Pull Requests for the code review and once this process is complete, the MD2K team will squash and merge your contribution into the MD2K codebase. Thank you for your effort and support.
