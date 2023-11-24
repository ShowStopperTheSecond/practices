class Vec {
    constructor(x, y) {
        this.x = x;
        this.y = y;
    }

    plus(x, y) {
        this.x += x;
        this.y += y;
        return this;
    }
    
    minus(x, y){
        this.x -= x;
        this.y -= y;
        return this;

    }
    get length(){
        return Math.sqrt(this.x **2 +this.y **2);
    }

    toString(){
        
        return {x: this.x, y: this.y};
    }
}

let vec1 = new Vec(10, 2);


console.log(vec1)
console.log(vec1.minus(1,2))
console.log(vec1.length)

