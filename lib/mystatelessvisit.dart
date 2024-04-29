import 'package:flutter/material.dart';

class MyStateFullVisit extends StatefulWidget {
  MyStateFullVisit({Key? key}) : super(key: key) {
    print('from constructor');
  }

  @override
  State<MyStateFullVisit> createState() {
    print('from create state');
    return _MyStateFullVisitState();
  }
}

class _MyStateFullVisitState extends State<MyStateFullVisit> {
  late int abc;
  @override
  void initState() {
    super.initState();
    print('from initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('from initState');
  }

  @override
  void didUpdateWidget(covariant MyStateFullVisit oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('from initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('from dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
              child: const Text('Click me'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.share),
                          title: Text('Share'),
                        ),
                        ListTile(
                          leading: Icon(Icons.copy),
                          title: Text('Copy'),
                        ),
                        ListTile(
                          leading: Icon(Icons.edit),
                          title: Text('Edit'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
