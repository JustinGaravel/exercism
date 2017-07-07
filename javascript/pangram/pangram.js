
// Constructor
function Pangram(input1 = null) {
  var inputArray = input1.split("");
};

Pangram.prototype.isPangram = function() {

//Declare variables here
  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  var isFound = false;

//main functionality goes here

//iterate through all the letters in the alphabet
  for(var i = 0; i < alphabet.length; i++) {
    //iterate through all elements in inputArray
    if ((this.inputArray).indexOf(alphabet[i]) != -1) {
      continue;
    } else {
      return false;
    }
  }
  return true;
};
module.exports = Pangram;
