import 'package:animals_app/feature/home/presentation/cubit/home_cubit.dart';
import 'package:animals_app/feature/home/presentation/cubit/home_state.dart';
import 'package:animals_app/feature/home/presentation/widget/bottom_navigation.dart';

import 'package:animals_app/feature/home/presentation/widget/header.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HomeCubit,HomeState>(
      builder: (BuildContext context, state) { return Scaffold(
        appBar: customAppBar(),
        body: context
            .read<HomeCubit>()
            .Screens[context.read<HomeCubit>().currentIndex],
        bottomNavigationBar: BottomNavigation(),
      ); },

    );
  }
}
