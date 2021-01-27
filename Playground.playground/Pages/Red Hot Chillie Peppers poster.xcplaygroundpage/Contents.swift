//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//background
canvas.fillColor = Color(hue: 32, saturation: 100, brightness: 70, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
//tiled design
for y in stride(from: 0, to: 400, by: 100) {
    for x in stride(from: 0, to: 400, by: 100) {
        
        if x+y==400 || x-y==0 || x+y==200{
            // Draw black logo
            canvas.lineColor = Color(hue: 0, saturation: 70, brightness: 0, alpha: 100)
            
        } else {
            // Draw red logo
            canvas.lineColor = Color(hue: 0, saturation: 70, brightness: 70, alpha: 100)
            
        }
        canvas.defaultLineWidth = 20
        canvas.drawLine(from: Point(x: x+50, y: y+15), to: Point(x: x+50, y: y+85))
        canvas.drawLine(from: Point(x: x+15, y: y+50), to: Point(x: x+85, y: y+50))
        canvas.drawLine(from: Point(x: x+20, y: y+80), to: Point(x: x+80, y: y+20))
        canvas.drawLine(from: Point(x: x+20, y: y+20), to: Point(x: x+80, y: y+80))
        
        
    }
}
//Text RED HOT CHILI PEPPERS
canvas.textColor = Color(hue: 0, saturation: 70, brightness: 70, alpha: 100)
canvas.drawText(message: "RED HOT", at: Point(x: 16, y: 496), size: 45, kerning: 1)
canvas.drawText(message: "CHILI PEPPERS", at: Point(x: 41, y: 446), size: 45, kerning: 1)
//black overly
canvas.textColor = Color(hue: 0, saturation: 70, brightness: 0, alpha: 100)
canvas.drawText(message: "RED HOT", at: Point(x: 20, y: 500), size: 45, kerning: 1)
canvas.drawText(message: "CHILI PEPPERS", at: Point(x: 45, y: 450), size: 45, kerning: 1)

//other texts
canvas.drawText(message: "oct 17 at 6pm", at: Point(x: 250, y: 550), size: 10, kerning: 1)
canvas.drawText(message: "point dume 1989", at: Point(x: 250, y: 535), size: 10, kerning: 1)
canvas.drawText(message: "21 and older", at: Point(x: 25, y: 570), size: 10, kerning: 1)

// chillie design


/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

