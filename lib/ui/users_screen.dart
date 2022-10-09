import 'package:flutter/material.dart';
import 'package:log_in/Models/card_info.dart';
import 'package:log_in/data_repositories//users.dart';
import 'package:log_in/models/user_model.dart';
import 'package:log_in/ui/components/Info_card.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);
  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  late Future<List<UserModel>> _usersListFuture;

  @override
  void initState() {
    super.initState();
    _usersListFuture = Users().getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Users list"),
      ),
      body: _getUsersGrid(),
    );
  }

  Widget _getUsersGrid() {
    return FutureBuilder<List<UserModel>>(
        future: _usersListFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                snapshot.data!.length,
                (index) => InfoCardComponent(
                  mycard: CardInfo(
                    title: "${snapshot.data![index].firstName} "
                        "${snapshot.data![index].lastName}",
                    subtitle: snapshot.data![index].email,
                    image: snapshot.data![index].image,
                  ),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
