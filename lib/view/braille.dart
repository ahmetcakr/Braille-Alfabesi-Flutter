import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../model/classes.dart';
import '../view-model/braille_page01.dart';
import '../view-model/braille_page02.dart';
import '../view-model/braille_page03.dart';
import '../view-model/braille_page04.dart';

class BrailleAlfabesi extends StatefulWidget {
  const BrailleAlfabesi({Key? key}) : super(key: key);

  @override
  State<BrailleAlfabesi> createState() => _BrailleAlfabesiState();
}

class _BrailleAlfabesiState extends State<BrailleAlfabesi>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final TabController _tabController;
  //final double _notchedValue = 10;
  final BannerAd myBanner = BannerAd(
    adUnitId: BannerAd.testAdUnitId,
    size: AdSize.largeBanner,
    request: const AdRequest(),
    listener: const BannerAdListener(),
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: MyTabViews.values.length,
      vsync: this,
    );
    myBanner.load(); // Load the Banner Ad
  }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: MyTabViews.values.length,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            //notchMargin: _notchedValue,
            // notchMargin notch ekranının yukarısındaki boşluk

            // notch ekranının çerçevesi
            child: _MyTabBar(tabController: _tabController),
          ),
          body: _TabBarView(tabController: _tabController),
          bottomSheet: SizedBox(
            height: 100,
            width: 500,
            child: AdWidget(ad: myBanner),
          ),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}

class _MyTabBar extends StatelessWidget {
  const _MyTabBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        padding: EdgeInsets.zero,
        splashBorderRadius: BorderRadius.circular(10),
        indicatorColor: Colors.white,
        controller: _tabController,
        tabs: MyTabViews.values
            .map((e) => Tab(
                  text: e.name.toUpperCase(),
                  icon: e.name == MyTabViews.alfabe.name
                      ? const Icon(MyIcons.alfabe)
                      : (e.name == MyTabViews.harf.name
                          ? const Icon(MyIcons.harf)
                          : (e.name == MyTabViews.deneme.name
                              ? const Icon(MyIcons.deneme)
                              : (e.name == MyTabViews.kelime.name
                                  ? const Icon(MyIcons.kelime)
                                  : const Icon(Icons.error)))),
                ))
            .toList());
  }
}

class _TabBarView extends StatelessWidget {
  const _TabBarView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(

        // physics: const NeverScrollableScrollPhysics(),
        // NeverScrollableScrollPhysics: scroll işlemi yapılmaz.
        controller: _tabController,
        children: const [
          BraillePage01(),
          BraillePage02(),
          BraillePage03(),
          BraillePage04(),
        ]);
  }
}
