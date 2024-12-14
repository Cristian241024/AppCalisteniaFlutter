import 'package:flutter/material.dart';
import 'edit_profile_screen.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil de Usuario"),
        backgroundColor: Colors.blue.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue.shade300,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Nombre Completo"),
              subtitle: Text("John Doe"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Nombre de Usuario"),
              subtitle: Text("johndoe123"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Correo Electrónico"),
              subtitle: Text("johndoe@email.com"),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(
                        name: "John Doe",
                        username: "johndoe123",
                        email: "johndoe@email.com",
                      ),
                    ),
                  );

                  if (result != null) {
                    // Actualizar perfil con los datos devueltos
                    print("Perfil actualizado: $result");
                  }
                },
                icon: Icon(Icons.edit),
                label: Text("Editar Perfil"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
