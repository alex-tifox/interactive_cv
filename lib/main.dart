import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:interactive_cv/configuration/constants.dart';
import 'package:interactive_cv/data/career_data.dart';
import 'package:interactive_cv/firebase_options.dart';
import 'package:interactive_cv/widgets/experience_grid_view.dart';
import 'package:interactive_cv/widgets/experience_list_view.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: Palette.lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: Palette.darkColorScheme,
      ),
      home: const SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: constraints.maxHeight > constraints.maxWidth ||
                  constraints.maxWidth < 650
              ? const ExperienceListView(
                  workExperience: ExperienceData.experience,
                )
              : const ExperienceGridView(
                  workExperience: ExperienceData.experience,
                ),
        );
      },
    );
  }
}
