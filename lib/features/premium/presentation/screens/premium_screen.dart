import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  int _selectedPlan = 2; // Default to Lifetime

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Premium Robot Image
              Image.asset(
                'assets/images/robot.png',
                height: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 24),
              Text(
                'PREMIUM UPGRADE',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: AppColors.primary,
                    ),
              ),
              const SizedBox(height: 16),
              // Features list
              _buildFeatureRow('Unlock the Power of Knowledge'),
              _buildFeatureRow('Unlimited book summaries'),
              _buildFeatureRow('Completely Ad-free'),
              const SizedBox(height: 32),
              // Pricing Cards
              _buildPlanCard(0, 'Weekly', '3-day free trial', '\$2.99'),
              const SizedBox(height: 12),
              _buildPlanCard(1, 'Monthly', '', '\$9.99'),
              const SizedBox(height: 12),
              _buildPlanCard(2, 'Lifetime', 'BEST SAVINGS', '\$19.99', isLifetime: true),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Upgrade...')),
                  );
                },
                child: const Text('Continue'),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Subscription Terms',
                  style: TextStyle(color: Colors.black45, fontSize: 12),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureRow(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle, color: Colors.blueAccent, size: 20),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(color: AppColors.textDark, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanCard(int index, String title, String subtitle, String price, {bool isLifetime = false}) {
    bool isSelected = _selectedPlan == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPlan = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary.withAlpha(20) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.grey.withAlpha(50),
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.primary : Colors.grey,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? const Center(
                      child: Icon(Icons.circle, size: 12, color: AppColors.primary),
                    )
                  : null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.textDark,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  if (subtitle.isNotEmpty)
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: isLifetime ? AppColors.primary : Colors.black54,
                        fontSize: 12,
                        fontWeight: isLifetime ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                ],
              ),
            ),
            Text(
              price,
              style: const TextStyle(
                color: AppColors.textDark,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
