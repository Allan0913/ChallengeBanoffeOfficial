import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cadastro.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_application_1/theme/theme.dart';
import 'package:flutter_application_1/widgets/Scaffold_customizado.dart';
import 'package:flutter_application_1/widgets/botao_customizado.dart';

class BemVindo extends StatelessWidget {
  const BemVindo({super.key});
  

  @override
  Widget build(BuildContext context) {
    return ScaffoldCustomizado(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0,
              ),
              child: Center(
                child: RichText(
        textAlign: TextAlign.center,
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Bem vindo!\n',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w600,
                )),
              TextSpan(
                text: 'Entre na sua conta empresarial\n',
                style: TextStyle(
                  fontSize: 20.0,
                  height: 0
                )),
            ],
          ),
          ),
         ),
      )),
           Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: BotaoBemVindo(
                      buttonText: 'Cadastrar',
                      onTap: TelaCadastro(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                    Expanded(
                    child: BotaoBemVindo(
                      buttonText: 'Logar',
                      onTap: const TelaLogin(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
