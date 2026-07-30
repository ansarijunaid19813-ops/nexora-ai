import 'package:flutter/material.dart';
import '../../models/agent_model.dart';

class AgentsData {
  static List<Agent> agents = [
    Agent(
      id: '1',
      name: 'Customer Support Agent',
      description: 'Handle customer queries 24/7 with smart responses',
      icon: Icons.support_agent_rounded,
      color: const Color(0xFF6366F1),
      isActive: true,
    ),
    Agent(
      id: '2',
      name: 'Sales Agent',
      description: 'Boost sales with AI-powered lead conversion',
      icon: Icons.trending_up_rounded,
      color: const Color(0xFF10B981),
      isActive: true,
    ),
    Agent(
      id: '3',
      name: 'Marketing Agent',
      description: 'Create campaigns and content that converts',
      icon: Icons.campaign_rounded,
      color: const Color(0xFFEC4899),
    ),
    Agent(
      id: '4',
      name: 'Email Agent',
      description: 'Draft and manage professional emails instantly',
      icon: Icons.email_rounded,
      color: const Color(0xFFF59E0B),
    ),
    Agent(
      id: '5',
      name: 'Research Agent',
      description: 'Deep research and analysis on any topic',
      icon: Icons.science_rounded,
      color: const Color(0xFF8B5CF6),
    ),
  ];
}
