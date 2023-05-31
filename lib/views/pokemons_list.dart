import 'package:flutter/material.dart';
import 'package:pokedex/components/pokemon_tile.dart';
import 'package:pokedex/providers/pokemon.dart';
import 'package:pokedex/routes/app_routes.dart';
import 'package:provider/provider.dart';

class PokemonsList extends StatelessWidget {
  const PokemonsList({super.key});

  @override
  Widget build(BuildContext context) {
    final Pokemons pokemons = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Pokedex"),
      ),
      body: ListView.builder(
        itemCount: pokemons.count,
        itemBuilder: (context, index) => PokemonTile(pokemons.getByIndex(index)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(
          context, 
          AppRoutes.FORM,
        ),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
