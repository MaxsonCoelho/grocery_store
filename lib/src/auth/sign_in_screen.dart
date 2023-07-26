import 'package:flutter/material.dart';
import '/src/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(
                        text: 'Grocery',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      TextSpan(
                        text: 'Store',
                        style: TextStyle(
                          color: Colors.red,
                        )
                      )
                    ]
                  )
                ),
                Text('Frutas e Legumes'),
              ],
            )
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45)
              )
            ),
            //formulário
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomFormField(
                  icon: Icons.email,
                  label: 'Email'
                ),
                const CustomFormField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),
                //botão entrar
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                      ),
                    ),
                    onPressed: () {}, 
                    child: const Text('Entrar', style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
                //botão esqueceu senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: (){},
                    child: const Text('Esqueceu a senha?',
                      style: TextStyle(
                        color: Colors.red
                      ),
                    ),
                  ),
                ),
                //divisor
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                //botão criar conta
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.green
                      ),
                    ),
                    onPressed: () {
                      
                    },
                    child: const Text('Criar conta', 
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}