import 'package:bloc_pattern_kullanimi/ui/views/cubit/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  
  var sayi1 = TextEditingController();
  var sayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bloc Kullanımı"),
        elevation: 15,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnaSayfaCubit, int>(builder: (context, islemSonucu) {
                return Text(islemSonucu.toString(),
                    style: const TextStyle(fontSize: 30));
              }),
              TextFormField(
                controller: sayi1,
                decoration: const InputDecoration(
                  hintText: "Sayı 1",
                ),
              ),
              TextField(
                controller: sayi2,
                decoration: const InputDecoration(hintText: "Sayı 2"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        context.read<AnaSayfaCubit>().toplamaYap(sayi1, sayi2);
                      },
                      child: const Text("Toplama")),
                  OutlinedButton(
                      onPressed: () {
                        context.read<AnaSayfaCubit>().carpmaYap(sayi1, sayi2);
                      },
                      child: const Text("Çarpma"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
