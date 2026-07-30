import 'package:flutter/material.dart';

class Agent {
  final String id;
  final String name;
  final String description;
  final IconData icon;
  final Color color;
  final bool isActive;

  Agent({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.color,
    this.isActive = false,
  });
}
