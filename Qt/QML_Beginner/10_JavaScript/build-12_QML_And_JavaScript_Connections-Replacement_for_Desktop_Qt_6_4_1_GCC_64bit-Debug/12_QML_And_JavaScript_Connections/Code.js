var Root
var Rectangle

function onStartUp(root, rectangle) {
    console.log("Completed!")
    Root = root
    Rectangle = rectangle
}


function clicked(mouse){
    console.log("Clicked")
    if (Rectangle.x ===0 ){
        Rectangle.x = Root.width - Rectangle.width
    }else{
        Rectangle.x =0
    }

}
