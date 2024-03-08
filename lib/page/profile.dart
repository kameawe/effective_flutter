import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:effective_lab/widgets/custom_chip.dart';
import 'package:effective_lab/widgets/menu_item.dart';
import 'package:effective_lab/widgets/sub_header.dart';
import 'package:effective_lab/widgets/subscription.dart';

const chips = [
  "Еда",
  "Саморазвитие",
  "Технологии",
  "Дом",
  "Досуг",
  "Забота о себе",
  "Наука"
];

var subscriptions = [
  new Subscription(
      imageUrl: "assets/images/sber_flag.png",
      title: "СберПрайм",
      subtitle: "Платеж 9 июля",
      caption: "199 ₽ в месяц"),
  new Subscription(
    imageUrl: "assets/images/percent.png",
    title: "Перевод",
    subtitle: "Автопродление",
    caption: "199 ₽ в месяц",
  )
];

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubHeader(
                  title: AppLocalizations.of(context)!.connectedTitle,
                  subtitle: AppLocalizations.of(context)!.connectedSubtitle),
              SizedBox(
                height: 22,
              ),
              SizedBox(
                width: double.infinity,
                height: 130,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return subscriptions[index];
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 8,
                      );
                    },
                    itemCount: 2),
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubHeader(
                  title: AppLocalizations.of(context)!.tariffsTitile,
                  subtitle: AppLocalizations.of(context)!.tariffsSubtitile),
              Column(
                children: [
                  MenuItem(
                    imageUrl: "assets/images/speedometer.png",
                    title: AppLocalizations.of(context)!.changeDailyLimitTitile,
                    subtitle:
                        AppLocalizations.of(context)!.changeDailyLimitSubtitile,
                  ),
                  MenuItem(
                    imageUrl: "assets/images/percent_unfilled.png",
                    title: AppLocalizations.of(context)!.transferTitle,
                    subtitle: AppLocalizations.of(context)!.transferSubtitle,
                  ),
                  MenuItem(
                    imageUrl: "assets/images/arrows.png",
                    title: AppLocalizations.of(context)!.limits,
                    subtitle: "",
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubHeader(
                  title: AppLocalizations.of(context)!.intrestingsTitle,
                  subtitle: AppLocalizations.of(context)!.intrestingsSubtitle),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    ...chips
                        .map((item) => CustomChip(label: item))
                        .toList()
                        .cast<Widget>()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
