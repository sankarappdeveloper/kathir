import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireListView extends StatelessWidget {
  // const FireListView({Key? key}) : super(key: key);
  TextEditingController _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Student Name List'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 15, left: 10),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                      // bottom: 5,
                      top: 5,
                      // right: 10,
                    ),
                    child: TextField(
                      controller: _text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Add here",
                          prefixIcon: Icon(
                            Icons.add,
                            color: Colors.greenAccent,
                          )),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  height: 50,
                  width: w / 2,
                ),
              ),
              SizedBox(
                width: w / 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RawMaterialButton(
                  onPressed: () {
                    Map<String, dynamic> data = {
                      "name": _text.text,
                    };
                    FirebaseFirestore.instance.collection('Name').add(data);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.limeAccent,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  // shape: CircleBorder(),
                  splashColor: Colors.transparent,
                  fillColor: Colors.deepPurpleAccent,
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, right: 20, left: 20, bottom: 15),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 12,
              )
            ],
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Expanded(
              child: StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection('Name').snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Text('NO Data here');
                  }
                  return ListView(
                    children: snapshot.data.docs.map((document) {
                      return Card(
                          borderOnForeground: true,
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 16,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                document['name'],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  size: 16,
                                ),
                                onPressed: () {
                                  document.reference.delete();
                                },
                              ),
                            ],
                          ));
                    }).toList(),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
