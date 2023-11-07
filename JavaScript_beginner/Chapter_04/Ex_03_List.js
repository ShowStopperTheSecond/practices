function arrayToList(arr) {

    let head = previousValue = { value: arr[0], previous: null, next: null };
    for (let i = 1; i < arr.length; i++) {
        currentValue = { value: arr[i], previous: previousValue, next: null };
        previousValue.next = currentValue
        previousValue = currentValue
    }
    return head
}
function printList(list) {
    currentNode = list
    do {
        console.log(currentNode.value)
        currentNode = currentNode.next
    }while(currentNode != null)

}


function listToArray(list){
    arr = []
    currentNode = list
    do {
       arr.push(currentNode.value)
        currentNode = currentNode.next
    }while(currentNode != null)
    return arr
}


function prepend(list, value){
    currentNode = list
    while(true){
        if (currentNode.next == null){
            currentNode.next = {value: value, next:null, previous:currentNode}
            break
        }else{
            currentNode = currentNode.next
        }
    }
    return list;
}



function getNth(list, indx){
    if( indx == 0)
        return list.value;
    else
        return getNth(list.next, indx -1 )
}

let arr = [1, 2, 3, 4, 5];
console.log(arr)
x = arrayToList(arr)
printList(x)
console.log(listToArray(x))
printList(prepend(x,265))
console.log(getNth(x, 3))





