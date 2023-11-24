class Matrix {
    constructor(height, width, elements = (x, y) => undefined) {
        this.height = height;
        this.width = width;
        this.content = [];
        for (let x = 0; x < width; x++) {
            for (let y = 0; y < height; y++) {
                this.content[x * width + y] = elements(x, y);
            }
        }
    }

    get(x, y) {
        return this.content[x * this.width + y];
    }
    set(x, y, value) {
        this.content[x * this.width + y] = value
    }

    toString() {
        let str = ""
        for (let x = 0; x < this.width; x++) {
            let currentLine = "";
            for (let y = 0; y < this.height; y++) {
                currentLine += this.get(x, y) + ",\t";
            }
            str += currentLine + "\n"
        }
        return str;


    }

}


class MatrixIterator {
    constructor(matrix) {
        this.x = 0
        this.y = 0
        this.matrix = matrix
    }
    next() {
        if (this.y == this.matrix.height) return { done: true }
        let value = {
            x: this.x,
            y: this.y,
            value: this.matrix.get(this.x, this.y)

        }
        this.x++;

        if (this.x == this.matrix.width) {
            this.x = 0;
            this.y++;
        }
        return { value, done: false }

    }
}

Matrix.prototype[Symbol.iterator] = function () {
    return new MatrixIterator(this);
}

const mat = new Matrix(5, 5, (x, y) => x * 5 + y);

console.log(mat.toString());



for (let {x, y, value} of mat){
    console.log(x, y , value);

}