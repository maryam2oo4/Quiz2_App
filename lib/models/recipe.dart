class Recipe {
  final String recipeName;
  List<String> emojiRatings = ["😀", "🙂", "😐", "☹️"];
  Recipe({required this.recipeName, required this.emojiRatings});
   Map<int, String> emojiToValue = {1: "😀", 2: "🙂", 3: "😐", 4: "☹️"};

}
