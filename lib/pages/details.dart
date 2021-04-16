import 'package:ddm2_fav_food/model/recipe.dart';
import 'package:flutter/material.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  RecipeDetail(this.recipe);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
            width: double.infinity,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(widget.recipe.imageUrl),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            widget.recipe.label,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
