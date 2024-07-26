import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/home/home_cubit.dart';
import '../../../utils/constants/app_colors.dart';
import '../../widgets/custom_bottom_navbar.dart';
import '../cart/cart_screen.dart';
import 'widgets/views/favorites_view.dart';
import 'widgets/views/home_view.dart';
import 'widgets/views/notification_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: StreamBuilder<int>(
        initialData: 0,
        stream: cubit.selectedIndexSubject.stream,
        builder: (context, snapshot) => views[snapshot.data!],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

const List<Widget> views = [
  HomeView(),
  CartScreen(),
  NotificationView(),
  FavoritesView(),
];
