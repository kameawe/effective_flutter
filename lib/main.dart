import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:effective_lab/page/profile.dart';
import 'package:effective_lab/widgets/custom_chip.dart';
import 'package:effective_lab/widgets/header.dart';
import 'package:effective_lab/widgets/menu_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [Locale("en"), Locale("ru")],
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: const Color(0xff22215b),
            ),
        colorScheme: ColorScheme.fromSeed(
          outline: Color.fromRGBO(6, 132, 65, 1),
          onPrimary: const Color(0x00000000),
          seedColor: Colors.deepPurple,
          onBackground: const Color(0x00000000),
          primary: Color.fromRGBO(0, 0, 0, 1),
          secondary: const Color.fromRGBO(0, 0, 0, 0.55),
          secondaryContainer: const Color.fromRGBO(0, 0, 0, 0.08),
          background: const Color(0xfffffffff),
          onSurface: const Color(0xFFFA8ADB7),
          tertiary: const Color(0xFFFF4D144),
          onSecondaryContainer: const Color(0xFFF41A0E7),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: NestedScrollView(
            body: TabBarView(children: [Profile(), SizedBox()]),
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                elevation: 5,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.white,
                toolbarHeight: 240,
                centerTitle: true,
                title: Column(
                  children: [
                    Header(
                      imageUrl: "assets/images/ekat_photo.png",
                      name: "Екатерина",
                    )
                  ],
                ),
                pinned: true,
                floating: true,
                snap: false,
                bottom: TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 4.0,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary),
                    unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.secondary),
                    tabs: [
                      Tab(
                        height: 56,
                        child: Text(AppLocalizations.of(context)!.profile),
                      ),
                      Tab(
                        height: 56,
                        child: Text(AppLocalizations.of(context)!.settings),
                      )
                    ]),
              )
            ],
          ),
        ));
  }
}
