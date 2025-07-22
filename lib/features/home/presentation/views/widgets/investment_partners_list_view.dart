import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'investment_item.dart';

class InvestmentPartnersListView extends StatelessWidget {
  const InvestmentPartnersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          InvestmentItem(
            img: MyAssets.btcImg,
            title: 'BTC Company',
            sub:
                'BTC Gold is a leading company that specializes in the buying and selling of gold and other precious',
          ),
          InvestmentItem(
            img: MyAssets.btcImg,
            title: 'BTC Company',
            sub:
                'BTC Gold is a leading company that specializes in the buying and selling of gold and other precious',
          ),
          InvestmentItem(
            img: MyAssets.amanImg,
            title: 'Aman Company',
            sub:
                'AMAN offers investment-grade gold products, including bars and coins, along with storage and secure delivery services.',
          ),
          InvestmentItem(
            img: MyAssets.amanImg,
            title: 'Aman Company',
            sub:
                'AMAN offers investment-grade gold products, including bars and coins, along with storage and secure delivery services.',
          ),
        ],
      ),
    );
  }
}
