import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class InvestmentItem extends StatelessWidget {
  const InvestmentItem(
      {super.key, required this.img, required this.title, required this.sub});
  final String img;
  final String title;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Image.asset(img),
      title: Text(
        title,
        style: Styles.textStyle16.copyWith(color: kPrimaryColor),
      ),
      subtitle: Text(
        sub,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Styles.textStyle12.copyWith(color: const Color(0XFFA9A9A9)),
      ),
    );
  }
}
