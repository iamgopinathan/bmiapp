import 'package:flutter/material.dart';
import 'package:flutter_application_1/receipe.dart';
import 'package:http/http.dart'as http;
import 'models/receipe.dart';

class restuarant extends StatefulWidget {
  const restuarant({super.key});

  @override
  State<restuarant> createState() => _restuarantState();
}

class _restuarantState extends State<restuarant> {

  List<Recipe> ?_recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await Recipe.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu,color: Colors.black,),
            SizedBox(width: 10,),
            Text('Food Receipe',style: TextStyle(color: Colors.black),)
          ],
        ),
      ),

      body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _recipes!.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                      title: _recipes![index].name,
                      cookTime: _recipes![index].totalTime,
                      rating: _recipes![index].rating.toString(),
                      thumbnailUrl: _recipes![index].images);
                },
              )
              );
  }
}