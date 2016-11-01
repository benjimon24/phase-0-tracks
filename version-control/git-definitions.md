# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Git has a system of recording all changes to a project so that you can jump back and forth between different versions later. Version control allows you to compare changes between versions, merge different revisions together, or revert the project back to a previous state in case anybody introduced new problems when making changes to the project. 

* What is a branch and why would you use one?

A branch is a copy of your project that you can work on without affecting the original project. You can later choose to merge the branch with the original project if you want to. This is useful if you want to work on new features of your project without jeopardizing the functional condition of your master branch.

* What is a commit? What makes a good commit message?

A commit is sort of like creating a save point in a video game. It creates a snapshot of your project in its current state. It includes a unique ID, the author of the commit, the time of the commit, and usually a message detailing the type of changes made. A good commit message should describe exactly what changed. It should also be readable and somewhat brief so that other people maintaining the code can easily understand what was changed.

* What is a merge conflict?

A merge conflict is when you try to merge two different branches that both have changes to the same part of your project. Git does not know which change should be used so it returns an error message instead. You have to manually resolve the conflict before you can complete the merge.

* Adding a line for Release 2: Tag Your Teacher