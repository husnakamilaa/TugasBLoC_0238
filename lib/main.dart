import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/auth/login.dart';
import 'package:state_management/bloc/auth/auth_bloc.dart';
import 'package:state_management/bloc/order/order_bloc.dart';
import 'package:state_management/mainui/home.dart';
import 'package:state_management/page/order_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (_) => AuthBloc()),
        BlocProvider<OrderBloc>(create: (_) => OrderBloc()),
      ],
      child: MaterialApp(
        title: "BLoC State Management App",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: '/login',
        routes: {
          '/login': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
          '/order': (context) => const OrderPage(),
        }
      ),
    );
  }
}