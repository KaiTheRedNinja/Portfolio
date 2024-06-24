# AttendINC

@Metadata {
    @PageImage(purpose: icon, source: "AttendINC_AppIcon", alt: "AttendINC App Icon")
}

AttendINC is a mass attendance tracking system designed for SST Inc, making use of a refreshing QR code, with 
Google Sheets integration

## Overview
AttendINC was designed initially to take attendance within <doc:SST-Inc>. SST Inc had several requirements
that justified the development of a custom solution:
- Mass attendance taking. We have up to hundreds of people each session, all of which have to be accounted for
- Google Sheets integration. SST Inc uses Google Sheets for attendance taking, so an attendance taking solution
must integrate with our existing workflow
- Recurring attendance. We have regular sessions, each of which is represented by a column in the sheet.
- Anti spoofing. As an app development programme, many of our members are technically inclined and can easily
spoof their attendance on a weakly secured attendance system

AttendINC satisfies all of the requirements. It makes use of [GSheetsSwift](https://www.github.com/KaiTheRedNinja/GSheetsSwift),
a library I wrote, to interface with Google Sheets. It also makes use of a constantly shifting QR code to make
sure people can't take photos and send it to their friends.

## Data Security
There are several stages within AttendINC, all of which need security.

### QR Code Payload
The AttendINC app generates QR codes roughly once every two seconds. The QR code contains the following data:
- Event name
- Time of QR code generation, down to the millisecond
- A UUID, representing the directory on the firebase to write to

All the details are zipped, encrypted, and shown on the QR code. The time that the QR code was generated is
also logged, for reference during the verification stage.

### Server
The client decodes the QR code data, and uploads the following information to the given firebase directory:
- Attendee's email (as verified by Google Sign In)
- Time of QR code scan
- Time of QR code generation (as given by the QR code's payload)

These details are then read by the AttendINC desktop app on the attendance taker's device. They are then
immediately deleted from the firebase server.

### Authenticity Verification
To verify the authenticity of an attendance, we do three things:
- Verify that the email is inside the attendance list. This ensures that the attendee is actually meant to be there.
- Verify that the time of QR code scan is within a given number of seconds (usually 5-10) after QR code generation.
This ensures that the scanned code was likely scanned directly, instead of being sent through a chat service.
- Verify that the time of QR generation exactly matches up with one of the QR codes generated in the last 30 seconds.
This ensures that the QR code generated was an authentic AttendINC QR code.
