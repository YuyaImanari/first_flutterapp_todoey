class Task {
  final String name;
  bool isChecked;
  Task({this.name, this.isChecked = false});
  void toggleState() {
    isChecked = !isChecked;
  }
}
