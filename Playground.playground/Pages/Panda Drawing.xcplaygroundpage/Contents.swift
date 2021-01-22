//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 300
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

// Replace this comment with your first comment – what is the goal of the code you're about to write?
canvas.drawAxes(withScale: true, by: 50)
canvas.drawShapesWithBorders = true
//background
canvas.fillColor = Color(hue: 120, saturation: 100, brightness: 35, alpha: 100)
canvas.drawRectangle(at: Point(x:0, y:0), width: 300, height: 350)
canvas.fillColor = Color(hue: 230, saturation: 100, brightness: 75, alpha: 100)
canvas.drawRectangle(at: Point(x:0, y:350), width: 300, height: 350)
canvas.fillColor = Color(hue: 55, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x: 125, y:500), width: 40, height: 40)

//body
canvas.fillColor = Color(hue: 100, saturation: 0, brightness: 0, alpha: 100)
canvas.drawEllipse(at: Point(x: 150, y:250), width: 100, height: 125)
canvas.fillColor = Color(hue: 100, saturation: 0, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x:150, y:250), width: 80, height: 100)



//head
canvas.fillColor = Color(hue: 100, saturation: 0, brightness: 0, alpha: 100)
canvas.drawEllipse(at: Point(x:175  , y:375), width: 40, height: 40)
canvas.drawEllipse(at: Point(x:125, y:375), width: 40, height: 40)
canvas.fillColor = Color(hue: 100, saturation: 0, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x: 150, y:340), width: 90, height: 90)
canvas.fillColor = Color(hue: 100, saturation: 0, brightness: 0, alpha: 100)
canvas.drawEllipse(at: Point(x:165  , y:350), width: 25, height: 25)
canvas.drawEllipse(at: Point(x:135  , y:350), width: 25, height: 25)
canvas.fillColor = Color(hue: 100, saturation: 0, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x:135  , y:350), width: 10, height: 10)
canvas.drawEllipse(at: Point(x:165  , y:350), width: 10, height: 10)
canvas.fillColor = Color(hue: 210, saturation: 100, brightness: 25, alpha: 100)
canvas.drawEllipse(at: Point(x:165  , y:350), width: 5, height: 5)
canvas.drawEllipse(at: Point(x:135  , y:350), width: 5, height: 5)
canvas.fillColor = Color(hue: 340, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x: 150, y:330), width: 25, height: 20)
canvas.drawCurve(from: Point(x: 125, y: 315), to: Point(x: 175, y: 315), control1: Point(x: 150, y: 295), control2: Point(x: 150, y: 295))
//paws
canvas.fillColor = Color(hue: 100, saturation: 0, brightness: 0, alpha: 100)
canvas.drawEllipse(at: Point(x:100, y:285), width: 40, height: 40)
canvas.drawEllipse(at: Point(x:108, y:200), width: 40, height: 40)
canvas.drawEllipse(at: Point(x:200, y:285), width: 40, height: 40)
canvas.drawEllipse(at: Point(x:190, y:200), width: 40, height: 40)
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
