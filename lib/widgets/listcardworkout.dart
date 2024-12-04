import 'package:app_calistenia_movil/data/data.dart';
import 'package:app_calistenia_movil/widgets/cardworkout.dart';
import 'package:flutter/material.dart';

class ListCardWorkout extends StatelessWidget {
  const ListCardWorkout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listCardWorkout.length,
        itemBuilder: (context, index) {
          return CardWorkout(
            card: listCardWorkout[index],
          );
        });
  }
}
