import 'package:flutter/material.dart';

class SeekBarData {
  final Duration duration;
  final Duration position;

  SeekBarData(this.duration, this.position);
}

class Seekbar extends StatelessWidget {
  final Duration duration;
  final Duration position;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangedEnd;
  const Seekbar(
      {Key? key,
      required this.duration,
      required this.position,
      this.onChanged,
      this.onChangedEnd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? _dragValue;
    return Row(
      children: [
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 2,
              thumbShape: const RoundSliderThumbShape(
                disabledThumbRadius: 4,
                enabledThumbRadius: 5,
              ),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 10),
              activeTrackColor: Colors.white.withOpacity(0.2),
              inactiveTrackColor: Colors.white,
              thumbColor: Colors.white,
              overlayColor: Colors.white,
            ),
            child: Slider(
              value: 0,
              onChanged: (value) {},
            ),
          ),
        ),
      ],
    );
  }
}
