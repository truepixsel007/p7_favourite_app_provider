import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  // List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouritefItemProvider>(context);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context,index){
                return ListTile(
                  onTap: (){
                    favouriteProvider.selectedItem
                    // selectedItem.add(index);
                    // setState(() {
                    //
                    // });
                  },
                  title: Text('item' + index.toString()),
                  trailing: Icon(
                      selectedItem.contains(index) ?
                      Icons.favorite
                          : Icons.favorite_border_outlined
                  ),
                );
            }),
          )
        ],
      ),
    );
  }
}
