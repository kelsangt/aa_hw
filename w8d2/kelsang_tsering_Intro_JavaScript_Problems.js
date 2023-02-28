// Phase 1

// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
// }


// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//       const x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
// }
  
// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
// }
  
// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
// }
  
// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

// mysteryScoping1()
// mysteryScoping3()
// mysteryScoping4()
// mysteryScoping5()


function madLib(verb, adjective, noun) {
     console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
}

madLib('make', 'best', 'guac')

function isSubstring(searchString, subString) {
    return searchString.split(" ").includes(subString) 
}

console.log(isSubstring("time to program", "time"))
console.log(isSubstring("Jump for joy", "joys"))

