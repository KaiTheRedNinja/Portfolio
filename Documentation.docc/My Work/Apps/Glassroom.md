# Glassroom

@Metadata {
    @PageImage(purpose: icon, source: "Glassroom_AppIcon", alt: "Glassroom App Icon")
}

Glassroom is a Google Classroom client for iOS and macOS, designed to be a superior alternative to the official Google Classroom app

## Overview

Google Classroom was slow and impossible to search. I wanted to fix that. So I made Glassroom, a Google Classroom client 
for iOS and macOS that is designed to be a superior alternative to the official Google Classroom app. It is designed to 
be faster, more customisable, and more accessible than the official app.

## Features
 - Basic google classroom parity
   - Loading courses
   - Loading posts
   - Viewing submissions
   - Viewing class members
 - Advanced google classroom parity
   - Post creation
   - View student submissions
 - User Speed Improvements/Conveniences
   - Practically instant loading (via post caching)
   - Offline mode (same reason)
   - Quick open/search (so you can open courses without having to hunt for them with your mouse. Just search by name.)
   - Sorting by post type (eg. only announcements, assignements, or materials)
   - Viewing multiple courses' posts at once (bit buggy rn tho :P)
 - Customisability
   - Client-side grouping courses into folders
   - Client-side archiving of courses
   - Custom course colors/icons
   - Renaming your classes
   - Date groups for posts (eg. "Last month", "This year" in that image)
 - Accessibility
   - Bionic reading (bolds the first few characters of a word, helps adhd people focus when reading)

## Speed comparisons

|          Category         | Google Classroom Web |   GlassRoom (cached)   | GlassRoom (non-cached) |
|---------------------------|:--------------------:|:----------------------:|:----------------------:|
| Launching website/app     |         4.68s        |           N/A          |          0.99s         |
| Loading courses           |         3.50s        |          0.00s         |          1.48s         |
| Loading posts             |         2.80s        |          0.14s         |          1.18s         |
| Loading post's submission |         0.90s        |          0.13s         |          0.31s         |
