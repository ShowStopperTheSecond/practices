class Group {

    constructor(content = []) {
        this.content = []
        for (let el of content) {
            if (this.content.indexOf(el) === -1) {
                this.content.push(el)
            }

        }

    }
    add(element) {
        if (this.content.indexOf(element) == -1) {
            this.content.push(element)
            return true
        }
        return false
    }
    delete(element) {
        if (this.content.indexOf(element) === -1) {
            return false
        }
        this.content.splice(this.content.indexOf(element), 1)
        return true
    }

    toString() {
        return this.content.toString();
    }

    static from(content = []){
        return new Group(content);
    }
}

class GroupIterator{
    constructor(Group){
        this.Group = Group
        this.index = 0
    }
    next(){
        if (this.index > this.Group.content.length) return {value: undefined, done: true}
        let val = this.Group.content[this.index]
        this.index++;
        return {value: val, done:false}

    }
}


Group.prototype[Symbol.iterator] = function () {
    return new GroupIterator(this);
}

Group.prototype.toString = function(){
    return this.content.toString()
};

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 30, 1, 1, 1, 1, 1,]
set_array = new Group(arr)
console.log(set_array.toString())
set_array.delete(3)
console.log(set_array.toString())

x = Group.from(["what", "the", "heck"])
console.log(x.toString())

for (let e of x){
    console.log(e)
}



console.log(Object.keys(x))