import 'package:coffe_shop/Business_Logic/Cubit/app_cubit.dart';
import 'package:coffe_shop/Presentation/Screens/coffe_home.dart';
import 'package:coffe_shop/constrants.dart';
import 'package:coffe_shop/shared_perfs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPerfs.getObject();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CoffeTheme.light(),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppCubit()),
        ],
        child: CoffeHome(),
      ),
    );
  }
}
