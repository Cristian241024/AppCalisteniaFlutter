import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  final String name;
  final String username;
  final String email;

  EditProfileScreen({
    required this.name,
    required this.username,
    required this.email,
  });

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _nameController;
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  bool _isNameValid = true;
  bool _isUsernameValid = true;
  bool _isEmailValid = true;
  bool _isPasswordValid = true;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _usernameController = TextEditingController(text: widget.username);
    _emailController = TextEditingController(text: widget.email);
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validateFields() {
    setState(() {
      _isNameValid = _nameController.text.trim().isNotEmpty;
      _isUsernameValid = _usernameController.text.trim().length >= 4;
      _isEmailValid = RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(_emailController.text.trim());
      _isPasswordValid = _passwordController.text.trim().length >= 6;
    });
  }

  void _showSaveConfirmation() async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Confirmar Cambios"),
          content: Text("¿Deseas guardar los cambios?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );

    if (result == true) {
      _saveProfile();
    }
  }

  void _saveProfile() {
    // Guardar los datos (puedes implementar lógica de backend aquí)
    Navigator.pop(context, {
      'name': _nameController.text,
      'username': _usernameController.text,
      'email': _emailController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Perfil"),
        backgroundColor: Colors.blue.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildValidatedTextField(
                controller: _nameController,
                label: "Nombre Completo",
                isValid: _isNameValid,
                errorMessage: "El nombre no puede estar vacío.",
              ),
              SizedBox(height: 15),
              _buildValidatedTextField(
                controller: _usernameController,
                label: "Nombre de Usuario",
                isValid: _isUsernameValid,
                errorMessage: "El nombre de usuario debe tener al menos 4 caracteres.",
              ),
              SizedBox(height: 15),
              _buildValidatedTextField(
                controller: _emailController,
                label: "Correo Electrónico",
                isValid: _isEmailValid,
                errorMessage: "El formato del correo no es válido.",
              ),
              SizedBox(height: 15),
              _buildValidatedTextField(
                controller: _passwordController,
                label: "Contraseña",
                isValid: _isPasswordValid,
                errorMessage: "La contraseña debe tener al menos 6 caracteres.",
                obscureText: true,
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Cancelar y volver
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Text("Cancelar"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _validateFields();
                      if (_isNameValid && _isUsernameValid && _isEmailValid && _isPasswordValid) {
                        _showSaveConfirmation();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade400,
                    ),
                    child: Text("Guardar"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildValidatedTextField({
    required TextEditingController controller,
    required String label,
    required bool isValid,
    required String errorMessage,
    bool obscureText = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          obscureText: obscureText,
          onChanged: (value) => _validateFields(),
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: isValid ? Colors.green : Colors.red,
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: isValid ? Colors.grey : Colors.red,
                width: 1,
              ),
            ),
          ),
        ),
        if (!isValid)
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 5.0),
            child: Text(
              errorMessage,
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
