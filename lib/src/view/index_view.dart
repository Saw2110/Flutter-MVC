import 'package:flutter/material.dart';
import 'package:mvcflutter/src/model/model.dart';

class IndexView extends StatelessWidget {
  final IndexModel model;
  const IndexView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MVC Practice")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${model.count}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: model.count < 0 ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: FloatingActionButton(
                    onPressed: () {
                      model.decrement();
                    },
                    child: const Icon(Icons.remove),
                  ),
                ),
                const SizedBox(width: 20.0),
                Flexible(
                  child: FloatingActionButton(
                    onPressed: () {
                      model.increment();
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
