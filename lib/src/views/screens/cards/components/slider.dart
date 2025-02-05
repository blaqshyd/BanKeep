import 'package:flutter/material.dart';
import 'package:bankeep/utils/constants/exports.dart';

class CustomSlider extends StatefulWidget {
  final double minValue;
  final double maxValue;
  final double initialValue;
  final ValueChanged<double>? onChanged;

  const CustomSlider({
    super.key,
    required this.minValue,
    required this.maxValue,
    required this.initialValue,
    this.onChanged,
  });

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  void _updateValue(double newValue) {
    setState(() {
      _value = newValue;
    });
    widget.onChanged?.call(newValue);
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 6.0,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 10.0),
        activeTrackColor: AppColor.primaryColor,
        inactiveTrackColor: Colors.white,
        thumbColor: Colors.blue,
        overlayColor: Colors.blue.withOpacity(0.3),
      ),
      child: Slider(
        min: widget.minValue,
        max: widget.maxValue,
        value: _value,
        onChanged: _updateValue,
      ),
    );
  }
}
