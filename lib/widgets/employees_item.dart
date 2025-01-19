import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:phonebook/data/dummy_data.dart';
import 'package:phonebook/models/employee.dart';
import 'package:phonebook/widgets/employee_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class EmployeeItem extends StatelessWidget {
  const EmployeeItem({
    super.key,
    required this.employee,
  });

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            // Ensure the image covers the entire box
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(employee.staffImage),
              fit: BoxFit.cover, // Ensures the image covers the box
              width: double.infinity, // Makes the image fill the Card width
              height: 200, // Fixed height for the card
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                  children: [
                    Text(
                      employee.empNameEng,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      employee.branchName,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        EmployeeItemTrait(
                          icon: Icons.notifications_active,
                          label: '${employee.createdAt}min',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
