import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class SeekBarData {
  final Duration duration;
  final Duration position;

  SeekBarData(this.duration, this.position);
}

class Seekbar extends StatefulWidget {
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
  State<Seekbar> createState() => _SeekbarState();
}

class _SeekbarState extends State<Seekbar> {
  double? _dragValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 3,
              thumbShape: const RoundSliderThumbShape(
                disabledThumbRadius: 4,
                enabledThumbRadius: 5,
              ),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 15),
              activeTrackColor: Colors.white.withOpacity(0.2),
              inactiveTrackColor: Colors.white,
              thumbColor: Colors.white,
              overlayColor: Colors.white38,
            ),
            child: Slider(
              value: min(
                  _dragValue ?? widget.position.inMilliseconds.toDouble(),
                  widget.duration.inMilliseconds.toDouble()),
              onChanged: (value) {
                setState(() {
                  _dragValue = value;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(
                    Duration(
                      milliseconds: value.round(),
                    ),
                  );
                }
              },
              min: 0.0,
              max: widget.duration.inMilliseconds.toDouble(),
            ),
          ),
        ),
      ],
    );
  }
}
