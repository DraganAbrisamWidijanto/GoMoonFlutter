import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.06),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_pageTitle(), _bookRideWidget()],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#ToTheMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 56,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.5,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/astro_moon.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropdownButtonClass(values: const [
      "Alfa Mobile Station",
      "Delta Mobile Station",
    ], width: _deviceWidth);
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(values: const [
          "1",
          "2",
          "3",
          "4",
        ], width: _deviceWidth * 0.4),
        CustomDropdownButtonClass(values: const [
          "Lunar",
          "Martian",
          "Jupiterian",
          "Saturnian",
        ], width: _deviceWidth * 0.45),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.005),
      width: _deviceHeight,
      //box decoration untuk warna button
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        //tidak terjadi apa apa ketika tombol ditekan
        onPressed: () {},
        child: const Text(
          "Book Ride",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
