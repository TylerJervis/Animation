//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
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
let canvas = Canvas(width: 500, height: 500)

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
//canvas borders
canvas.drawAxes(withScale: true, by: 50)
canvas.drawShapesWithBorders = true
// BR corner lines
canvas.drawLine(from: Point(x:0, y:0), to: Point(x:500, y:50))
canvas.drawLine(from: Point(x:50, y:0), to: Point(x:500, y:100))
canvas.drawLine(from: Point(x:100, y:0), to: Point(x:500, y:150))
canvas.drawLine(from: Point(x:150, y:0), to: Point(x:500, y:200))
canvas.drawLine(from: Point(x:200, y:0), to: Point(x:500, y:250))
canvas.drawLine(from: Point(x:250, y:0), to: Point(x:500, y:300))
canvas.drawLine(from: Point(x:300, y:0), to: Point(x:500, y:350))
canvas.drawLine(from: Point(x:350, y:0), to: Point(x:500, y:400))
canvas.drawLine(from: Point(x:400, y:0), to: Point(x:500, y:450))
canvas.drawLine(from: Point(x:450, y:0), to: Point(x:500, y:500))
// TL corner lines
canvas.drawLine(from: Point(x:500, y:500), to: Point(x:0, y:450))
canvas.drawLine(from: Point(x:450, y:500), to: Point(x:0, y:400))
canvas.drawLine(from: Point(x:400, y:500), to: Point(x:0, y:350))
canvas.drawLine(from: Point(x:350, y:500), to: Point(x:0, y:300))
canvas.drawLine(from: Point(x:300, y:500), to: Point(x:0, y:250))
canvas.drawLine(from: Point(x:250, y:500), to: Point(x:0, y:200))
canvas.drawLine(from: Point(x:200, y:500), to: Point(x:0, y:150))
canvas.drawLine(from: Point(x:150, y:500), to: Point(x:0, y:100))
canvas.drawLine(from: Point(x:100, y:500), to: Point(x:0, y:50))
canvas.drawLine(from: Point(x:50, y:500), to: Point(x:0, y:0))
// BL corner lines
canvas.drawLine(from: Point(x:500, y:0), to: Point(x:0, y:50))
canvas.drawLine(from: Point(x:450, y:0), to: Point(x:0, y:100))
canvas.drawLine(from: Point(x:400, y:0), to: Point(x:0, y:150))
canvas.drawLine(from: Point(x:350, y:0), to: Point(x:0, y:200))
canvas.drawLine(from: Point(x:300, y:0), to: Point(x:0, y:250))
canvas.drawLine(from: Point(x:250, y:0), to: Point(x:0, y:300))
canvas.drawLine(from: Point(x:200, y:0), to: Point(x:0, y:350))
canvas.drawLine(from: Point(x:150, y:0), to: Point(x:0, y:400))
canvas.drawLine(from: Point(x:100, y:0), to: Point(x:0, y:450))
canvas.drawLine(from: Point(x:50, y:0), to: Point(x:0, y:500))
//TR corner lines
canvas.drawLine(from: Point(x:0, y:500), to: Point(x:500, y:450))
canvas.drawLine(from: Point(x:50, y:500), to: Point(x:500, y:400))
canvas.drawLine(from: Point(x:100, y:500), to: Point(x:500, y:350))
canvas.drawLine(from: Point(x:150, y:500), to: Point(x:500, y:300))
canvas.drawLine(from: Point(x:200, y:500), to: Point(x:500, y:250))
canvas.drawLine(from: Point(x:250, y:500), to: Point(x:500, y:200))
canvas.drawLine(from: Point(x:300, y:500), to: Point(x:500, y:150))
canvas.drawLine(from: Point(x:350, y:500), to: Point(x:500, y:100))
canvas.drawLine(from: Point(x:400, y:500), to: Point(x:500, y:50))
canvas.drawLine(from: Point(x:450, y:500), to: Point(x:500, y:0))
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
