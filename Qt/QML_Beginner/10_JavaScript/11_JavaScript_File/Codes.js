function changeLoc(rect, root){
    if (rect.x === 0){
        return  root.width - rect.width
    }else {
        return 0
    }

}


function swapColors(area){
    if (area.pressed){
        return "blue"
    }else{
        return "green"
    }

}


function test(){
    console.log("WTF is going on here? ")
}

