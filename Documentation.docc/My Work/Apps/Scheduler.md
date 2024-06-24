# Scheduler

@Metadata {
    @PageImage(purpose: icon, source: "Empty_AppIcon", alt: "Empty App Icon")
}

Scheduler is an app designed for SST students to have an easy way to access their daily timetable

## Overview
SST's schedules are extremely cluttered, with ten different day schedules and an even-odd week format that
can be difficult to remember. Scheduler provides all this information to the user in a simple, easy-to-read format.
This includes:
- Next subject
- Next occurence of a subject
- Next recess
- Duration of current subject

## Challenges
The algorithm used to scan the schedules is not resillient to small changes in the schedule's format, and doesn't
react well to low quality images. After the schedule's format was changed significantly, the algorithm broke and
we decided to stop development on the app.