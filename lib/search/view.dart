import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            snap: true,
            floating: true,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                child: TextField(),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Text('test' + index.toString());
              },
              childCount: 1100,
            ),
          ),
        ],
      ),
    );
  }
}
