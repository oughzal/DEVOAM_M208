import 'package:flutter/material.dart';
import 'User.dart';
import 'DatabaseHelper.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late DatabaseHelper _databaseHelper;
  late List<User> _users;
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;

  @override
  void initState() {
    super.initState();
    _databaseHelper = DatabaseHelper.instance;
    _users = [];
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _refreshUsers();
  }

  Future<void> _refreshUsers() async {
    List<User> users = await _databaseHelper.getUsers();
    print(users);
    setState(() {
      _users = users;
    });
  }

  Future<void> _addUser() async {
    String firstName = _firstNameController.text;
    String lastName = _lastNameController.text;
    if (firstName.isNotEmpty && lastName.isNotEmpty) {
      User newUser = User(firstName: firstName, lastName: lastName);
      await _databaseHelper.createUser(newUser);
      _firstNameController.clear();
      _lastNameController.clear();
      _refreshUsers();
    }
  }

  Future<void> _updateUser(User user) async {
    await _databaseHelper.updateUser(user);
    _refreshUsers();
  }

  Future<void> _deleteUser(int id) async {
    await _databaseHelper.deleteUser(id);
    _refreshUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Management'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _firstNameController,
            decoration: InputDecoration(labelText: 'First Name'),
          ),
          TextField(
            controller: _lastNameController,
            decoration: InputDecoration(labelText: 'Last Name'),
          ),
          ElevatedButton(
            onPressed: _addUser,
            child: Text('Add User'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _users.length,
              itemBuilder: (context, index) {
                User user = _users[index];
                return ListTile(
                  title: Text(user.firstName),
                  subtitle: Text(user.lastName),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Edit User'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  TextField(
                                    controller: TextEditingController()
                                      ..text = user.firstName,
                                    onChanged: (value) {
                                      user.firstName = value;
                                    },
                                    decoration:
                                    InputDecoration(labelText: 'First Name'),
                                  ),
                                  TextField(
                                    controller: TextEditingController()
                                      ..text = user.lastName,
                                    onChanged: (value) {
                                      user.lastName = value;
                                    },
                                    decoration:
                                    InputDecoration(labelText: 'Last Name'),
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancel'),
                                ),
                                ElevatedButton(
                                  //TODO : TextFeild
                                  onPressed: () async {
                                    await _updateUser(user);
                                    Navigator.pop(context);
                                  },
                                  child: Text('Save'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _deleteUser(user.id ?? 0); // kt : id ?: 0
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
