
// Constructor
function Pangram(input1 = null) {
  var this.inputArray = input1.split("");
};

Pangram.prototype.isPangram = function() {

//Declare variables here
  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  var isFound = false;
  var allTrue = [];
  //iterate through all the letters in the alphabet
  for (i in alphabet) {
    if (this.inputArray.includes(i)){
      allTrue.push(true);
    } else {
      allTrue.push(false);
    }
  }
  if (allTrue.includes(false)) {
    return false;
  } else {
    return true;
  }
}
module.exports = Pangram;
