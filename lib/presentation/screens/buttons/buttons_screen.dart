import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: _ButtonsView(),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        spacing: 10, //horizontal gap
        runSpacing: 10, //vertical gap
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('elevated button')),
          ElevatedButton(onPressed: null, child: Text('elevated disabled')),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.access_alarm_rounded),
            label: Text('Elevated icon'),
          ),
          FilledButton(onPressed: () {}, child: Text('filled')),
          FilledButton.icon(
            onPressed: () {},
            icon: Icon(Icons.abc_outlined),
            label: Text('filled icon'),
          ),
          OutlinedButton(onPressed: () {}, child: Text('outline')),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text('outline'),
            icon: Icon(Icons.accessibility_new_sharp),
          ),
          TextButton(onPressed: () {}, child: Text('text')),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.account_balance),
            label: Text('text icon'),
          ),

          //custom
          CustomButton(),
          IconButton(onPressed: () {}, icon: Icon(Icons.app_registration)),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('hola mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
