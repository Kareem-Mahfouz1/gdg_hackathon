import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class GoalsItem extends StatelessWidget {
  const GoalsItem(
      {super.key,
      required this.perc,
      required this.title,
      required this.duration});
  final int perc;

  final String title;

  final int duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0XFF2C2C2C),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Styles.textStyle20,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.alarm,
                  color: Color(0XFF6F6C69),
                ),
                Text(
                  '$duration months left',
                  style: Styles.textStyle14
                      .copyWith(color: const Color(0XFF6F6C69)),
                ),
              ],
            ),
            const SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LinearPercentIndicator(
                  barRadius: const Radius.circular(10),
                  width: 235.0,
                  lineHeight: 5.0,
                  percent: perc / 100,
                  backgroundColor: const Color(0xff6F6C69),
                  progressColor: kPrimaryColor,
                ),
                Text(
                  '$perc%',
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w400,
                    color: kPrimaryColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
