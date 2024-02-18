import 'dart:math';

import 'package:flutter/material.dart';

class RoundedLoadingIndicator extends StatefulWidget {
  @override
  _RoundedLoadingIndicatorState createState() =>
      _RoundedLoadingIndicatorState();
}

class _RoundedLoadingIndicatorState extends State<RoundedLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3), // Увеличиваем время загрузки до 3 секунд
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 119,
              height: 119,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _controller.value * 2 * pi, // Прогресс анимации
                    child: CircularProgressIndicator(
                      strokeWidth: 10, // Увеличиваем толщину индикатора
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.orange,
                      ),
                      backgroundColor: Colors.grey[200], // Фон серого цвета
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 100),
            Container(
              child: Text(
                'Your rider is on the way to your destination',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tracking Number ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'R-7458-4567-4434-5854',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Color.fromRGBO(5, 96, 250, 1)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
