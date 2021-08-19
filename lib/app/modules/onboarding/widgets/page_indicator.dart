import 'package:flutter/material.dart';

class PageIndicatorWidget extends StatefulWidget {
  final int currentPage;
  final int pagesLength;

  PageIndicatorWidget(this.currentPage, this.pagesLength);
  @override
  _PageIndicatorWidgetState createState() => _PageIndicatorWidgetState();
}

class _PageIndicatorWidgetState extends State<PageIndicatorWidget> {
  List<Widget> buildIndicator() => List.generate(
        widget.pagesLength,
        (index) {
          return _indicator(index == widget.currentPage);
        },
      );

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.all(6),
      height: 8,
      width: isActive ? 46 : 9,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 76, 224, 210),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: buildIndicator());
  }
}
