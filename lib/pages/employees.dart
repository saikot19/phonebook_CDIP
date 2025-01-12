import 'package:flutter/material.dart';
import 'package:phonebook/models/employee.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({
    super.key,
    required this.title,
    required this.employees,
  });

  final String title;
  final List<Employee> employees;

  @override
  Widget build(BuildContext context) {
    // Determine the content based on whether the employees list is empty
    final Widget content = employees.isEmpty
        ? Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Ensures column size matches children
        children: [
          Text(
            'Uh oh... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    )
        : ListView.builder(
      itemCount: employees.length, // Specify the number of items
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(employees[index].staffImage),
          ),
          title: Text(
            employees[index].empNameEng,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          subtitle: Text(employees[index].designationName),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
