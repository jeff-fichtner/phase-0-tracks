#Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

> Version control is a software program that takes snapshots of the code and tracks all differences. It provides the necessary ability to seamlessly work with other people and save so that one can look back to the specific point when code goes wrong - a crucial feature on massive codebases.

* What is a branch and why would you use one?

> A branch is a copy of the master that a dev uses to work on the code, before re-inserting it and updating the master file. It allows for the separation between good and potentially bad code - by updating the master only with a stable, fully-functional feature, you have a much more organized and secure master.

* What is a commit? What makes a good commit message?

> A commit is a save point in git, after a tracked file has been modified.  A good commit message concisely specifies the exact changes made, for easy retrieval.

* What is a merge conflict?

> A merge conflict occurs when two separate branches work on the same code and try to merge together.