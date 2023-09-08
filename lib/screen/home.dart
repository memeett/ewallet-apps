import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeApps extends StatefulWidget {
  const HomeApps({Key? key});

  @override
  State<HomeApps> createState() => _HomeAppsState();
}

class _HomeAppsState extends State<HomeApps> {
  final user = FirebaseAuth.instance.currentUser;

  List<String> docIDs = []; 

  void signUserOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future getDocId() async {
    await FirebaseFirestore.instance.collection('users').get().then((snapshot) => snapshot.docs.forEach((element) {
      print(element.reference);
      docIDs.add(element.reference.id);
    })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(user!.email ?? ""),
            // FutureBuilder(
            //   // future: getDocId(),
            //   builder: (context, snapshot) {
            //   return ListView.builder(
            //   itemCount: 3,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       title: Text('docIDs[index]'),
            //     );
            //   },
              
            //   );
            // },
            // )
            // ListView.builder(
            //   itemCount: 2,
            //   itemBuilder: (context, index) {
            //   Text("tes");
            // },)
      
          ],
        ),
      ),
      
    );
  }
}
