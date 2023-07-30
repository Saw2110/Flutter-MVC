import 'package:flutter/material.dart';
import 'package:mvcflutter/src/model/model.dart';
import 'package:mvcflutter/src/view/view.dart';

class IndexController extends StatefulWidget {
  const IndexController({super.key});

  @override
  State<IndexController> createState() => _IndexControllerState();
}

class _IndexControllerState extends State<IndexController> {
  final IndexModel _indexModel = IndexModel();

  @override
  void initState() {
    super.initState();
    _indexModel.addListener(_onModelUpdated);
  }

  @override
  void dispose() {
    _indexModel.removeListener();
    super.dispose();
  }

  void _onModelUpdated() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return IndexView(model: _indexModel);
  }
}
