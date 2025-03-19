import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider Counter Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter Value:",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),

            Consumer<CounterProvider>(
              builder: (context, counterProvider, child) {
                return Text(
                  counterProvider.count.toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                );
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                context.read<CounterProvider>().increment();
              },
              child: Text("Increment Counter"),
            ),
          ],
        ),
      ),
    );
  }
}
