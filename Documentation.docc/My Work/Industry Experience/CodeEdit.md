# CodeEdit

@Metadata {
    @PageImage(purpose: icon, source: "CodeEdit_AppIcon", alt: "CodeEdit App Icon")
    @PageImage(purpose: card, source: "CodeEdit_AppIcon", alt: "CodeEdit App Icon")
}

CodeEdit is a lightweight, natively-built, open source code editor built for macOS. It aims to be a general-purpose replacement for code editors like VSCode

## Overview

I stumbled upon CodeEdit when I was a student in the <doc:Swift-Accelerator-Programme>. I was fascinated by the prospect
of a macOS-native editor, as all general purpose code editors for macOS are cross platform. Cross platform apps tend to
sacrifice design and performance in order to be compatible with more platforms.

I tried out CodeEdit and realised that the editor had certain missing critical features, such as adding files and folders 
directly in the editor. I added the ability to create them within the editor, which then uncovered other issues with the
editor not updating due to a misconfigured file system watcher.

I had to delve very deep into complicated code that I did not yet have the skill to completely understand. I learned
quickly, and soon I made my first ever open-source commit, to CodeEdit.

## My Journey within CodeEdit

Due to issues with CodeEdit's management, a few maintainers left CodeEdit to form <doc:AuroraEditor>. I joined them early
on, becoming one of the project's Project Managers. I spearheaded multiple large refactors, such as the file system,
version control, the editor, and fun features like vertical tabs.

Eventually, negotiations started to merge AuroraEditor back into CodeEdit. I rejoined CodeEdit as a maintainer.

## What I learned

CodeEdit for me was very much a learn-on-the-job situation that demonstrated my ability to learn and think critically
in the face of unknown challenges. However, that doesn't mean that I didn't make mistakes. My naivete resulted in several
bad decisions, such as:
- De-modularising the codebase, which increased the messyness of the code
- Not writing tests, which made my code unreliable
- Implementing ideas without fully developing them, which resulted in multiple half-finished features
- Not writing documentation, which made my code unreadable

In the future, I plan to make sure that I follow the engineering design process to its fullest extent, in order to make
my work the best it can possibly be.
