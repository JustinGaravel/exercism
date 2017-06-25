
// Constructor
function Hamming() {

};

Hamming.prototype.compute = function(input1, input2) {
  this.ham1 = input1.split("");
  this.ham2 = input2.split("");
  this.hammingDistance = 0;

  if ((this.ham1.length) != (this.ham2.length)) {
    throw Error("DNA strands must be of equal length.");
  } else {
    for (i = 0; i < this.ham1.length; i ++) {
      if (this.ham1[i] != this.ham2[i]) {
        this.hammingDistance++;
      }
    }
  };
  return this.hammingDistance;
};

module.exports = Hamming;
