import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pokedex_view.dart';
import 'bloc/pokemon_event.dart';
import 'bloc/pokemon_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(primaryColor: Colors.red),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  PokemonBloc()..add(PokemonPageRequest(page: 0)))
        ],
        child: PokedexView(),
      ),
    );
  }
}
