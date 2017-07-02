
// Constructor
function Pangram() {

};

Pangram.prototype.isPangram = function(input1) {

//Declare variables here
  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  var inputArray = input.split("");
  var isFound = false;
//main functionality goes here


//iterate through all the letters in the alphabet
  for(var i = 0; i < alphabet.length; i++) {
    //iterate through all elements in inputArray
    if (inputArray.indexOf(alphabet[i]) != -1) {
      continue;
    } else {
      return false;
    }
  }
  return true;
};
module.exports = Pangram;
