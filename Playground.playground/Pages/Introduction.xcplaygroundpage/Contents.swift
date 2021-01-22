//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 300
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 38, write a meaningful comment.
 
 You can remove the code on line 39 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 */

// Replace this comment with your first comment – what is the goal of the code you're about to write?


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Draw a face
canvas.fillColor = .white
canvas.defaultBorderWidth = 5
canvas.drawEllipse(at: Point(x: 150, y: 300), width: 200, height: 200)

// Draw eyes
canvas.drawEllipse(at: Point(x: 125, y: 325), width: 10, height: 20)
canvas.drawEllipse(at: Point(x: 175, y: 325), width: 10, height: 20)

// Draw mouth
canvas.drawEllipse(at: Point(x: 150, y: 270), width: 100, height: 30)

// Turn mouth into a smile by covering up top half of mouth
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 150, y: 275), width: 125, height: 25, anchoredBy: .centre)

/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
