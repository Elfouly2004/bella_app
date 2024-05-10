
import 'package:bella/core/utils/appcolors.dart';
import 'package:bella/features/favhome/liastfav.dart';
import 'package:bella/features/home/data%20model/Listmodel.dart';
import 'package:bella/features/home/data%20model/model.dart';
import 'package:flutter/material.dart';


class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    List<FoodModel> Favitems = foods.where((foodModel) => foodModel.fav==true).toList() ;


    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: Favitems.length,
        itemBuilder: (context,index) {
          return  Card(
            child: Center(
              child: ListTile(
                title: Text(Favitems[index].textImage,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text("${Favitems[index].price} \$",
                  style: const TextStyle(
                      color: AppColors.orange,
                      fontWeight: FontWeight.bold
                  ),
                ),
                leading: Image.asset(Favitems[index].image),
                trailing: GestureDetector(
                  onTap: ( ) {
                    setState(() {
                      Favitems[index].fav = false;
                    });

                  },
                  child: CircleAvatar(

                    backgroundColor: AppColors.orange.withOpacity(0.1),
                    child: const Icon(Icons.favorite,
                      color: AppColors.orange,
                    ),
                  ),
                ),
              ),
            ),
          ) ;
        });
  }
}
