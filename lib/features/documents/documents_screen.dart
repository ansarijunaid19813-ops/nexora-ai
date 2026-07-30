import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core/theme/app_theme.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.text, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'AI Documents',
          style: TextStyle(color: AppColors.text, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What would you like to do?',
              style: TextStyle(color: AppColors.text, fontSize: 20, fontWeight: FontWeight.bold),
            ).animate().fadeIn(duration: 600.ms),
            const SizedBox(height: 8),
            const Text(
              'Select a tool to get started',
              style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
            ).animate().fadeIn(duration: 600.ms, delay: 100.ms),
            const SizedBox(height: 24),
            _buildToolCard(
              context: context,
              icon: Icons.auto_awesome_rounded,
              title: 'Generate Document',
              subtitle: 'Create documents from scratch with AI',
              color: const Color(0xFF6366F1),
              delay: 200,
            ),
            _buildToolCard(
              context: context,
              icon: Icons.edit_note_rounded,
              title: 'Rewrite Text',
              subtitle: 'Improve and rephrase your content',
              color: const Color(0xFF10B981),
              delay: 300,
            ),
            _buildToolCard(
              context: context,
              icon: Icons.summarize_rounded,
              title: 'Summarize Text',
              subtitle: 'Get quick summaries of long content',
              color: const Color(0xFFEC4899),
              delay: 400,
            ),
            _buildToolCard(
              context: context,
              icon: Icons.translate_rounded,
              title: 'Translate Text',
              subtitle: 'Translate to any language instantly',
              color: const Color(0xFFF59E0B),
              delay: 500,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToolCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required int delay,
  }) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$title - Coming Soon'),
            backgroundColor: AppColors.card,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border, width: 1),
        ),
        child: Row(
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: color.withOpacity(0.15),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.text,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.textSecondary,
              size: 16,
            ),
          ],
        ),
      ),
    ).animate().fadeIn(duration: 400.ms, delay: delay.ms).slideX(begin: 0.2, end: 0);
  }
}
