import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../constants.dart';
import '../cubits/user_cubit/user_cubit.dart';
import 'widgets/goals_body.dart';
import 'widgets/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is UserSuccess) {
            return SafeArea(
              child: [
                HomeBody(user: state.user),
                HomeBody(user: state.user),
                GoalsBody(user: state.user),
                HomeBody(user: state.user),
              ][selectedIndex],
            );
          } else if (state is UserFailure) {
            return Text(state.errMessage);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.transparent,
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) => setState(() {
          selectedIndex = value;
        }),
        backgroundColor: kSecondaryColor,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            selectedIcon: Icon(
              Icons.home_filled,
              color: kPrimaryColor,
            ),
          ),
          NavigationDestination(
            icon: Icon(FontAwesomeIcons.database),
            label: 'Budget',
            selectedIcon: Icon(
              FontAwesomeIcons.database,
              color: kPrimaryColor,
            ),
          ),
          NavigationDestination(
            icon: Icon(FontAwesomeIcons.penToSquare),
            label: 'Goals',
            selectedIcon: Icon(
              FontAwesomeIcons.penToSquare,
              color: kPrimaryColor,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.person_sharp),
            label: 'Profile',
            selectedIcon: Icon(
              Icons.person_sharp,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
