// packages
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// pages
import 'package:phonebook/data/dummy_data.dart';
import 'package:phonebook/models/employee.dart';
import 'package:phonebook/pages/employees.dart';
import 'package:phonebook/widgets/category_grid_item.dart';
import 'package:phonebook/models/category.dart' as customCategory;

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  void _selectCategory(BuildContext context, customCategory.Category category) {
    final filteredEmployees = availableEmployees
        .where((employee) => employee.deptId == category.id)
        .toList();

    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => EmployeesPage(
        title: category.name,
        employees: filteredEmployees,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Standard white AppBar color
        title: const Text(
          'Department',
          style: TextStyle(
            color: Colors.black, // Black text for white AppBar
          ),
        ),
        elevation: 1, // Subtle shadow for standard design
      ),
      body: Container(
        color: Colors.white, // Standard white background color
        child: GridView(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          children: [
            for (final category in availableCategories)
              CategoryGridItem(
                category: category,
                onSelectCategory: () {
                  _selectCategory(context, category);
                },
              ),
          ],
        ),
      ),
    );
  }
}
