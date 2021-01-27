//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 500
let preferredHeight = 500
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

//axies numbers
canvas.drawAxes(withScale: true, by: 50)
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
for j in stride(from: 1, through: 100, by: 1) {
    let yellow = Color(hue: 60, saturation: 80, brightness: j + 2, alpha: 100)
    canvas.borderColor = yellow
    canvas.drawEllipse(at: Point(x: 100, y: 350), width: j, height: j)
}
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

//moon's gradient
// loop for the y values
for i in stride(from: 250, to: 300, by: 1) {
    
    //set the brigthness
    let brigthness = map(value: Double(i), fromLower: 50, fromUpper: 250, toLower: 25, toUpper: 100)
    // colour
    let color = Color(hue: 60, saturation: 80, brightness: Int(brigthness), alpha: 100)
    // line colour
    canvas.lineColor = color
    
    canvas.drawLine(from: Point(x: 200, y: i), to: Point(x: 300, y: i))
    
}

// blue triangle background
canvas.fillColor = Color(hue: 240, saturation: 100, brightness: 55, alpha: 100)

var VertivesOfBackgroundTriangle: [Point] = []
// The vertices of background triangle
//start
VertivesOfBackgroundTriangle.append(Point(x:250, y:400))
VertivesOfBackgroundTriangle.append(Point(x:100, y:100))
VertivesOfBackgroundTriangle.append(Point(x:400, y:100))
VertivesOfBackgroundTriangle.append(Point(x:250, y:400))
//end
// draw the polygon
canvas.drawCustomShape(with: VertivesOfBackgroundTriangle)

//circles to curve the edges
//white rectangle to cover corners
canvas.fillColor = Color(hue: 240, saturation: 0, brightness: 100, alpha: 100)
canvas.drawRectangle(at: Point(x:250-20, y:400-20), width: 30, height: 25)


// top circle
canvas.fillColor = Color(hue: 240, saturation: 100, brightness: 55, alpha: 100)
canvas.drawEllipse(at: Point(x: 250, y:377), width: 21, height: 21)

//curved bottom
canvas.drawEllipse(at: Point(x: 250, y:100), width: 299, height: 75)

//earth
canvas.fillColor = Color(hue: 240, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x:250, y:145), width: 100, height: 100)
canvas.fillColor = Color(hue: <#T##Float#>, saturation: <#T##Float#>, brightness: <#T##Float#>, alpha: <#T##Float#>)

//figure 8 band

//strt 8 band
canvas.lineColor = Color(hue: 0, saturation: 100, brightness: 100, alpha: 100)

canvas.defaultLineWidth = 7
//top curve
canvas.drawCurve(from: Point(x: 250, y: 280), to: Point(x: 250, y: 210), control1: Point(x: 195, y: 280), control2: Point(x: 170, y: 210))
canvas.drawCurve(from: Point(x: 250, y: 280), to: Point(x: 250, y: 210), control1: Point(x: 250+55, y: 280), control2: Point(x: 250+70, y: 210))
//bottom curve
canvas.defaultLineWidth = 9

canvas.drawCurve(from: Point(x: 250, y: 208), to: Point(x: 250, y: 125), control1: Point(x: 160, y: 175), control2: Point(x: 125, y: 121))
canvas.drawCurve(from: Point(x: 250, y: 208), to: Point(x: 250, y: 125), control1: Point(x: 250+90, y: 175), control2: Point(x: 250+125, y: 121))
//moon
canvas.fillColor = Color(hue: 60, saturation: 50, brightness: 90, alpha: 100)

canvas.drawEllipse(at: Point(x: 250, y:275), width: 45, height: 45)

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
