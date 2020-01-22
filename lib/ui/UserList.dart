import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lookaround/model/User.dart';

class UsersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
      future: _fetchUsers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<User> data = snapshot.data;
          return _usersListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Future<List<User>> _fetchUsers() async {

    final usersListAPIUrl = 'http://0c95d4b4.ngrok.io/v1/user';
    final response = await http.get(usersListAPIUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((user) => new User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users from API');
    }
  }

  ListView _usersListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _tile(data[index].fullname, data[index].username, Icons.work);
        });
  }

  ListTile _tile(String fullname, String username, IconData icon) => ListTile(
        title: Text(fullname,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(username),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
        trailing: Icon(Icons.favorite, color: Colors.red,),
        onTap: (){
          print(username);
        },
      );
}