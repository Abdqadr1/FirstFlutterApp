class TechTerm {
  String text;
  String stack;

  //   // normal constructor
  //  TechTerm (String text, String stack) {
  //   this.text = text;
  //   this.stack = stack;
  // }
  //
  // // named parameters constructor
  // TechTerm({String text, String stack}){
  //   this.text = text;
  //   this.stack = stack;
  // }

  // Another way
  TechTerm ({this.stack, this.text});
}