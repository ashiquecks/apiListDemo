import 'package:apicallproject/PROVIDER/listProvider.dart';
import 'package:apicallproject/SERVICE/listApiService.dart';
import 'package:apicallproject/WIDGET/projectCardWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getListApiData();
  }

  // Album Response Post To List Provider
  getListApiData() async {
    var provider = Provider.of<ListProvider>(context, listen: false);
    var response = await getAlbumList();
    if (response.isNotEmpty) {
      provider.setPostList(response);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    final listProvider = Provider.of<ListProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Albums"),
      ),
      body: ListView.builder(
        itemCount: listProvider.dataList.length,
        itemBuilder: (context, index) {
          return listCard(
            titleText: listProvider.dataList[index].title,
            subTitelText: listProvider.dataList[index].id.toString(),
          );
        },
      ),
    );
  }
}
