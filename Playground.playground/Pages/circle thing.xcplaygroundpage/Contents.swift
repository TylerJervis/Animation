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

//black background
canvas.fillColor = Color(hue: 106, saturation: 64, brightness: 0, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 500)
//circles


for y in stride(from: 0, through: 400, by: 40) {
    for x in stride(from: 0, through: 400, by: 40) {
        
        if x == 0 || x == 400 || y==0 || y==400 || x==350 || x+y==440 || x+y==480 || x+y==520 || x+y==560 || x+y==600 || x+y==640 || x+y==680 || x+y==720{
            // Draw green circle
            canvas.fillColor = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
            
        } else {
            // Draw White circle
            canvas.fillColor = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
            
        }
        
        canvas.drawEllipse(at: Point(x: x , y: y ), width: 35, height: 35)
        
    }
}

//green rect on top
canvas.fillColor = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

//text pixies
canvas.drawText(message: "pixies", at: Point(x: 20, y: 410), size: 60, kerning: 2)

//top left text
canvas.drawText(message: "saturday", at: Point(x: 20, y: 550), size: 10, kerning: 1)
canvas.drawText(message: "december 13 1986", at: Point(x: 20, y: 540), size: 10, kerning: 1)
canvas.drawText(message: "9 pm over 21", at: Point(x: 20, y: 530), size: 10, kerning: 1)

//top right text
canvas.drawText(message: "at the rat", at: Point(x: 275, y: 550), size: 10, kerning: 1)
canvas.drawText(message: "528 commonwealth", at: Point(x: 275, y: 540), size: 10, kerning: 1)
canvas.drawText(message: "boston, mass.", at: Point(x: 275, y: 530), size: 10, kerning: 1)

//Bottom right white text
canvas.textColor = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
canvas.drawText(message: "with", at: Point(x: 275, y: 455), size: 14, kerning: 1)
canvas.drawText(message: "throwing muses", at: Point(x: 275, y: 440), size: 14, kerning: 1)
canvas.drawText(message: "big dipper", at: Point(x: 275, y: 425), size: 14, kerning: 1)






































































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

