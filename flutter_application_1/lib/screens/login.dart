import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cadastro.dart';
import 'package:flutter_application_1/theme/theme.dart';
import 'package:flutter_application_1/widgets/Scaffold_customizado.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});


  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _formLogarKey = GlobalKey<FormState>();
  bool lembrarSenha = true;
  @override
  Widget build(BuildContext context) {
    return ScaffoldCustomizado(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
            height: 10,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 50.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formLogarKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Área de Login",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      color: lightColorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                        height: 25.0,
                      ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Coloque o seu email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: const Text('Email'),
                        hintText: 'Coloque E-mail',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                          color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                      ),
                    ),
                    const SizedBox(
                        height: 25.0,
                      ),                  
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Coloque o sua senha';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: const Text('Senha'),
                        hintText: 'Coloque Senha',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                          color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                      ),
                    ),
                    const SizedBox(
                        height: 25.0,
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                      Row( 
                        children: [
                        Checkbox(
                          value: lembrarSenha,
                          onChanged: (bool? value) {
                        setState(() {
                          lembrarSenha = value!;
                        });
                      },
                        activeColor: lightColorScheme.primary,
                        ),
                        const Text(
                          'Lembrar Senha',
                          style: TextStyle(
                            color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: lightColorScheme.primary,
                              ),
                            ),
                          ), 
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                                if (_formLogarKey.currentState!.validate() &&
                                lembrarSenha) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Processando data'),
                                ),
                              );
                            } else if (!lembrarSenha) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Por favor, concorde com o processamento de dados pessoais')),
                              );
                            }
                          },
                          child: const Text("Entrar"),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      // don't have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Não tem uma conta? ',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const TelaCadastro(),
                                ),
                              );
                            },
                            child: Text(
                              'Cadastre-se',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: lightColorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                    ]
                  ),
                ),
          ),
            ),
          ),
        ],
      ),
    );
  }
}