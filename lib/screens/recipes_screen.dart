import 'package:flutter/material.dart';
import 'package:quiz2/screens/result_screen.dart';
import '../widgets/recipe_item.dart';
import '../data/recipes.dart';

class RecipesScreen extends StatelessWidget {
  final void Function(int, String) onSelectRating;
  final Function() onSubmit;

  const RecipesScreen({
    super.key,
    required this.onSelectRating,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(25),
     
      child: Column(
        children: [
          ...recipes.asMap().entries.map((entry) {
            int index = entry.key;
            var recipe = entry.value;

            return RecipeItem(
              recipe: recipe,
              index: index,
              onSelectRating: onSelectRating,
            );
          }),

          const SizedBox(height: 20),

          const ElevatedButton(onPressed: onSubmit, child: Text("Submit"))
        ],
      ),
    );
  }
}
