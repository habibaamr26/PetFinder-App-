import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text_style.dart';
import '../../data/models/response_model.dart';

class PetCard extends StatelessWidget {
  final CatApiResponse pet;
  final VoidCallback onTap;

  const PetCard({Key? key, required this.onTap, required this.pet})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breed = pet.breeds?.isNotEmpty == true ? pet.breeds!.first : null;

    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.only(bottom: 12),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  pet.url,
                  width: 112,
                  height: 112,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.pets,
                        size: 40,
                        color: Colors.grey,
                      ),
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      breed!.name,
                      style: AppTextStyles.textStyleBold18,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 4),
                    Text(
                      breed.temperament,
                      style: AppTextStyles.textStyleRegular14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 18, color: Colors.red),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            breed.origin,
                            style: AppTextStyles.textStyleRegular14,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              IconButton(
                icon: const Icon(
                  Icons.favorite_outline,
                  size: 28,
                  color: AppColors.primaryDark,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
