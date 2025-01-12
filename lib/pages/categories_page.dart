// packages
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// pages
import 'package:phonebook/data/dummy_data.dart';
import 'package:phonebook/pages/employees.dart';
import 'package:phonebook/widgets/category_grid_item.dart';
import 'package:phonebook/pages/employees.dart';


class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});


  void _selectCategory(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder:(ctx) => EmployeesPage(
      title:'Some title',
      employees: [],
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
    title: const Text('Department'),
    ),
    body: GridView(
    padding: const EdgeInsets.all(24),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    // Two items per row for a medium screen
    childAspectRatio: 1.5,
    // A balanced aspect ratio for both width and height
    crossAxisSpacing: 12,
    // Moderate space between columns
    mainAxisSpacing: 12, // Space between rows to avoid clutter
    ),
    children: [
    for (final category in availableCategories)
    CategoryGridItem(
    category: category,
    onSelectCategory:(){
    _selectCategory(context);

    }

    ),
    ],
    ),
    );
  }
}