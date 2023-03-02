function printCallback(array) {
    array.forEach((ele) => console.log(ele));
}

function titleize(names, callback) {
   let newArr = [];
   names.map(name => {
    newArr.push("Mx. " + name + " Jingleheimer " + "Schmidt");
   })
   callback(newArr);
}

titleize(["Mary", "Brian", "Leo"], printCallback);

class Elephant {
    constructor(name, height, tricks) {
        this.name = name;
        this.height = height;
        this.tricks = tricks;
    }
}

Elelphant.prototype.trumpet = function() {
    console.log(this.name + "the elephant goes 'phrRRRRRRRRRRR!!!!!!!'");
}

Elephant.prototype.grow = function() {
    this.height += 12;
}