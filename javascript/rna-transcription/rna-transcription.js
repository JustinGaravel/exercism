
// Constructor
function DnaTranscriber() {

};

DnaTranscriber.prototype.toRna = function(input1) {

  var dnaStrand = input1;
  var rnaStrand = [];


  for (i = 0; i < dnaStrand.length; i++) {
    switch(dnaStrand[i]) {
      case 'G':
          rnaStrand.push('C');
          break;
      case 'C':
        rnaStrand.push('G');
        break;
      case 'T':
        rnaStrand.push('A');
        break;
      case 'A':
        rnaStrand.push('U');
        break;
      default:
        throw Error('Invalid input');
      }
  }
  return rnaStrand.join("");
};

module.exports = DnaTranscriber;
