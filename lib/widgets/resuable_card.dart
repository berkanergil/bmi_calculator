import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.cardChild, required this.onPress});

  final Color color;
  final Widget? cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
