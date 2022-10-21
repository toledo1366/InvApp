import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invapp/infrastructure/helpers/error_view.dart';
import 'package:invapp/modules/inventarisations/inventarizations_cubit.dart';

class Inventarizations extends StatefulWidget {
  const Inventarizations({ Key? key }) : super(key: key);

  @override
  State<Inventarizations> createState() => _InventarizationsState();
}

class _InventarizationsState extends State<Inventarizations> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InventarizationsCubit()..init(),
      child: _buildContext(context),
    );
  }

  Widget _buildContext(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invetarizations list', style: TextStyle(color: Colors.amber),),
        backgroundColor: Colors.green.shade800,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.amber,),
        backgroundColor: Colors.green.shade800,
      ),
      body: BlocBuilder<InventarizationsCubit, InventarizationsState>(
        builder: (context, state) {
          return state.map(
            dataLoaded: (s) {
              if(s.data.isEmpty){
                return const ErrorView();
              } else {
                return const Text('somedata');
              }
            }, dataLoading: (_) => Container(),
          );
        },
      ),
    );
  }
}