import 'package:chatgpt/feature/chat/data/repo/chat_repo_impl.dart';
import 'package:chatgpt/feature/chat/logic/cubit/chat_cubit.dart';
import 'package:chatgpt/feature/home/presenation/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(ChatRepoImpl()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 29, 2, 74)),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
