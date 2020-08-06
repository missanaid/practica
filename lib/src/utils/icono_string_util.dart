import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'format_list_bulleted': Icons.format_list_bulleted,
  'music_video': Icons.music_video,
  'search': Icons.search,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
  'tune': Icons.tune,
  'list': Icons.list,
};
Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.amber[900]);
}
