#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>

versionInfo: GameID
    IFID = '1f624b4c-52f2-458e-894c-dd42dae87e9a'
    name = 'Parchment Test'
    byline = 'by Alec Roberts'
    htmlByline = 'by <a href="mailto:alecrobertsaif@gmail.com">
                  Alec Roberts</a>'
    version = '1'
    authorEmail = 'Alec Roberts <alecrobertsaif@gmail.com>'
    desc = 'A simple test of some features in Parchment.'
    htmlDesc = 'A simple test of some features in Parchment.'
;

room: Room 'Room'
    "The following should be a 3x3 table:
    <table>
        <tr>
            <td width=500>A1 (this column should be 500px wide)</td>
            <td>A2 (this column should have flexible width)</td>
            <td width=200>A3 (this column should be 200px wide)</td>
        </tr>
        <tr>
            <td>B1</td>
            <td>B2</td>
            <td>B3</td>
        </tr>
        <tr>
            <td valign=top>C1 (this should appear at its row's top)</td>
            <td valign=bottom>C2 (this should appear at its row's bottom)</td>
            <td>C3 (here is some other text to force this onto multiple lines)</td>
        </tr>
    </table>
    
    <b>This line should be in bold.</b>\b
    
    <i>This line should be in italics</i>\b
    
    <u>This line should be underlined.</u>\b
    
    <font color=blue>This line should be blue.</font> "
;

me: Actor
    location = room
;

gameMain: GameMainDef
    initialPlayerChar = me

    showIntro()
    {
        "<b>Parchment Test</b>\b";
    }

    showGoodbye()
    {
        "<.p>Thanks for playing!\b";
    }
;
