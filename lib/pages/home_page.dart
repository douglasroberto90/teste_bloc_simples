import 'dart:async';
import 'package:flutter/material.dart';
import 'package:teste_bloc_simples/blocs/meu_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MeuBloc bloc = MeuBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste - BLoC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder<int>(
                stream: bloc.minhaStream,
                initialData: 0,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Há um erro na Stream');
                  } else {
                    return Text(
                      '${snapshot.data}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  }
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: bloc.incrementar,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
  @override
  void dispose() {
    bloc.fecharStream();
    super.dispose();
  }
}


