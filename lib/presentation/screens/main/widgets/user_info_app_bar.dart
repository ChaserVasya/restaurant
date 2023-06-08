import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:restaurant/presentation/blocs/user_cubit/user_cubit.dart';

class UserInfoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserInfoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //TODO починить
      leading: const Icon(Icons.location_on_outlined),
      title: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) => state.when(
          initial: () => const CircularProgressIndicator.adaptive(),
          main: (city) {
            return Column(
              children: [
                Text(city),
                _DateText(DateTime.now()),
              ],
            );
          },
          error: (_) => const Text('Не удалось получить данные :('),
        ),
      ),
      actions: const [CircleAvatar()],
    );
  }

  @override
  Size get preferredSize => const Size(
        double.infinity,
        kToolbarHeight,
      );
}

class _DateText extends StatelessWidget {
  _DateText(this.dateTime, {super.key});

  final DateTime dateTime;
  final _formatter = DateFormat('d MMMM, y', Platform.localeName);

  @override
  Widget build(BuildContext context) {
    return Text(_formatter.format(dateTime));
  }
}
