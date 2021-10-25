import 'package:api/screens/offers/controller.dart';
import 'package:api/screens/offers/model.dart';
import 'package:flutter/material.dart';

class OffersView extends StatefulWidget {
  const OffersView({Key? key}) : super(key: key);

  @override
  _OffersViewState createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  OffersController offersController = OffersController();
  late OffersModel offersModel;
  bool _loading = true;
  @override
  void initState() {
    _getOffers();
    super.initState();
  }

  _getOffers() async {
    print('jjg');
    offersModel = await offersController.getOffers();
    print(offersModel.data[0].title);
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(),
    );
  }
}
