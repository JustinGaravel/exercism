
// Constructor
function Pangram() {

};

Pangram.prototype.isPangram = function(input1) {

//Declare variables here
  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  var inputArray = input.split("");

//main functionality goes here


//iterate through all the letters in the alphabet
  for(var i = 0; i < alphabet.length; i++)
    {
      //check to see if each one is in the string. If we encounter a letter than is not - break and return false for isPangram();
      
    }


};
module.exports = Pangram;
