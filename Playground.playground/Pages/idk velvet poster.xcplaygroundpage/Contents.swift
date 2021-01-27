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


// background
canvas.fillColor = Color(hue: 83, saturation: 4, brightness: 0, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//arrows pattern
for y in stride(from: 0, to: 400, by: 80) {
    for x in stride(from: 0, to: 400, by: 80) {
        
        if y-x==0 {
            // Draw white arrows
            canvas.lineColor = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)
            
        } else {
            // Draw purple arrows
            canvas.lineColor = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
            
        }
        canvas.defaultLineWidth = 15
        canvas.drawLine(from: Point(x:x+5, y:y+5), to: Point(x: x+5, y: y+60))
        canvas.drawLine(from: Point(x: x+5, y: y+5), to: Point(x:x+60, y: y+5))
        canvas.drawLine(from: Point(x:x+8, y:y+8), to: Point(x:x+70, y:y+70))
    }
}
//lower line running across the poster
canvas.defaultLineWidth = 2
canvas.lineColor = Color(hue: 309, saturation: 0, brightness: 100, alpha: 100)
canvas.drawLine(from: Point(x:0, y:460), to: Point(x:400, y:460))
//top line

canvas.drawLine(from: Point(x:0, y:570), to: Point(x:400, y:570))
//text THE VELVET UNDERGROUND
canvas.textColor = Color(hue: 309, saturation: 0, brightness: 100, alpha: 100)
canvas.drawText(message: "the velvet underground", at: Point(x: 10, y: 410), size: 30, kerning: 1)
//TL text
canvas.drawText(message: "first appearance in london", at: Point(x: 10, y: 550), size: 7, kerning: 1)
canvas.drawText(message: "the london college of printing", at: Point(x: 10, y: 540), size: 7, kerning: 1)
//TM text
canvas.drawText(message: "with spring and pollyfloskin", at: Point(x: 150, y: 550), size: 7, kerning: 1)
canvas.drawText(message: "plus the great western light show", at: Point(x: 150, y: 540), size: 7, kerning: 1)
//TR text
canvas.drawText(message: "thursday", at: Point(x: 300, y: 550), size: 7, kerning: 1)
canvas.drawText(message: "october 14 1971 / 8pm", at: Point(x: 300, y: 540), size: 7, kerning: 1)
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

canvas.drawAxes(withScale: true, by: 50, color: Color(hue: 83, saturation: 4, brightness: 89, alpha: 0))
