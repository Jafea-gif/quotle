import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "output"]

  transferWord(event) {
    var word = "";
    // concatenate letters into word
    for (let i = 0; i < this.inputTargets.length; i++) {
      var letter = this.inputTargets[i].value;
      word = word + letter;
    }
    // use word to populate real input field
    this.outputTarget.setAttribute('value', word);
  }
  // TODO
  autoAdvance(event) {
    console.log('STARTING METHOD');
    for (let i = 0; i < this.inputTargets.length; i++) {
      console.log('LOOP THROUGH INPUTS');
      // advance to first empty letter field and focus there
      console.log(this.inputTargets[i].value.length < this.inputTargets[i].maxLength);
      if (this.inputTargets[i].value.length < this.inputTargets[i].maxLength) {
        this.inputTargets[i].focus();
        break;
      }
    }
  }

}
