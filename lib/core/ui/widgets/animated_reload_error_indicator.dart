import 'package:flutter/material.dart';
import 'package:reader_app/core/constants/colors.dart';

/// Basic layout for indicating that an exception occurred.
class AnimatedReloadExceptionIndicator extends StatelessWidget {
  const AnimatedReloadExceptionIndicator({
    @required this.title,
    this.message,
    this.onTryAgain,
    Key key,
    this.heightFactor = 0.3,
  })  : assert(title != null),
        super(key: key);
  final String title;
  final String message;
  final VoidCallback onTryAgain;
  final double heightFactor;

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 64),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                    height: MediaQuery.of(context).size.height * heightFactor,
                    width: MediaQuery.of(context).size.width,
                    child: Icon(
                      Icons.book,
                      color: Colors.red[600],
                      size: 100,
                    )),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.blue),
              ),
              if (message != null)
                const SizedBox(
                  height: 16,
                ),
              if (message != null)
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: GREY),
                ),
              if (onTryAgain != null)
                SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              if (onTryAgain != null)
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.blue)),
                    onPressed: onTryAgain,
                    icon: const Icon(
                      Icons.refresh,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Try again',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
}
