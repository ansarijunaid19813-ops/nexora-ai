import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core/theme/app_theme.dart';
import '../../core/constants/app_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          'Profile',
          style: TextStyle(color: AppColors.text, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Avatar
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.card,
                border: Border.all(color: AppColors.accent, width: 2),
              ),
              child: const Center(
                child: Text(
                  'JA',
                  style: TextStyle(
                    color: AppColors.accent,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ).animate().fadeIn(duration: 600.ms).scale(begin: const Offset(0.5, 0.5)),

            const SizedBox(height: 16),

            const Text(
              'Junaid Ansari',
              style: TextStyle(color: AppColors.text, fontSize: 22, fontWeight: FontWeight.bold),
            ).animate().fadeIn(duration: 600.ms, delay: 200.ms),

            const SizedBox(height: 4),

            const Text(
              'ansarijuanid19813@gmail.com',
              style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
            ).animate().fadeIn(duration: 600.ms, delay: 300.ms),

            const SizedBox(height: 24),

            // Subscription Card
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.accent.withOpacity(0.2),
                    AppColors.accent.withOpacity(0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.accent.withOpacity(0.3), width: 1),
              ),
              child: Row(
                children: [
                  const Icon(Icons.workspace_premium_rounded, color: AppColors.accent, size: 36),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Free Plan',
                          style: TextStyle(color: AppColors.text, fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'Upgrade to unlock all features',
                          style: TextStyle(color: AppColors.textSecondary, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.accent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Upgrade',
                      style: TextStyle(color: AppColors.background, fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ).animate().fadeIn(duration: 600.ms, delay: 400.ms),

            const SizedBox(height: 24),

            // Settings Options
            _buildOption(icon: Icons.person_outline_rounded, title: 'Edit Profile', delay: 500),
            _buildOption(icon: Icons.notifications_outlined, title: 'Notifications', delay: 550),
            _buildOption(icon: Icons.lock_outline_rounded, title: 'Privacy & Security', delay: 600),
            _buildOption(icon: Icons.help_outline_rounded, title: 'Help & Support', delay: 650),
            _buildOption(icon: Icons.info_outline_rounded, title: 'About NEXORA AI', delay: 700),

            const SizedBox(height: 16),

            // Logout Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppConstants.routeLogin,
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.card,
                  foregroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.redAccent, width: 1),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.5),
                ),
              ),
            ).animate().fadeIn(duration: 600.ms, delay: 750.ms),
          ],
        ),
      ),
    );
  }

  Widget _buildOption({required IconData icon, required String title, required int delay}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 1),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.textSecondary, size: 22),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: AppColors.text, fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          const Icon(Icons.arrow_forward_ios_rounded, color: AppColors.textSecondary, size: 14),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms, delay: delay.ms).slideX(begin: 0.2, end: 0);
  }
}
