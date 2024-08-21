import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/theme.dart';
import 'package:flutter_application_1/widgets/Scaffold_customizado.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});


  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}
class _TelaCadastroState extends State<TelaCadastro>{
  final _formCadastrarKey = GlobalKey<FormState>();
  bool agreePersonalData = true;
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
          flex: 7,
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
              key: _formCadastrarKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Área de Cadatro",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      color: lightColorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nome Completo';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: const Text('Nome Completo'),
                          hintText: 'Inserir Nome Completo',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12, // Default border color
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                        hintText: 'Inserir E-mail',
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
                        hintText: 'Inserir Senha',
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
                        height: 40.0,
                      ),
                      SizedBox(
                        
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formCadastrarKey.currentState!.validate() &&
                                agreePersonalData) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Processing Data'),
                                ),
                              );
                            } 
                          },
                          child: const Text('Cadastrar'),
                        ),
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