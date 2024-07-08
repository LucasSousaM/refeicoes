import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/favotite_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          centerTitle: true,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          title: const Text('Vamos cozinhar?'),
          bottom: TabBar(
            unselectedLabelColor: Theme.of(context).colorScheme.onPrimary,
            dividerColor: Theme.of(context).colorScheme.primary,
            indicatorColor: Theme.of(context).colorScheme.secondary,
            labelColor: Theme.of(context).colorScheme.onPrimary,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.category,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                text: 'Favoritos',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavotiteScreen(),
          ],
        ),
      ),
    );
  }
}
