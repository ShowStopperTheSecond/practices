let currentLine = "";
let width = 64;
let height = 64;
for (let i=0; i<=width; i++){
    currentLine = "";
    for(let j=0; j<=height; j++){
            currentLine += ((i+j)%2 == 0? "#": " ");
    }
    console.log(currentLine);
    
}