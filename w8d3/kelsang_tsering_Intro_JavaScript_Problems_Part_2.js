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

