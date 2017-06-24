
// Constructor
function Hamming() {
  var this.ham1 = [];
  var this.ham2 = [];
  var this.hammingDistance = 0;
};

Hamming.prototype.compute = function(input1, input2) {
  this.ham1 = input1.split("");
  this.ham2 = input2.split("");

  if ((this.ham1.length) != (this.ham2.length)) {
    throw "DNA strands must be of equal length.";
  } else {
    for (i = 0; i < this.ham1.length; i ++) {
      if (this.ham1[i] != this.ham2[i]) {
        this.hammingDistance++;
      }
    }
  };
};
