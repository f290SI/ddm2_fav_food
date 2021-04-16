import 'package:ddm2_fav_food/model/recipe.dart';
import 'package:flutter/material.dart';
import 'package:ddm2_fav_food/pages/details.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MiCard'),
        ),
        body: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index) {
              var recipe = Recipe.samples[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return RecipeDetail(recipe);
                  }));
                },
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage(recipe.imageUrl),
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(recipe.label, style: TextStyle(fontSize: 24),),
                      ),
                    ],
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
