import 'package:flutter/material.dart';

class AddDialog extends StatelessWidget {
  final Function onPressed;
  final TextEditingController controller;
  const AddDialog({required this.onPressed, required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog( // модальный диалоговый окно
      content: ClipRRect( //сделали обрезание
        borderRadius: BorderRadius.circular(16.0), // задаем радиус закругления
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8),
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller, //позволяет управлять текстом
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 4,
              ),
              ElevatedButton( //кнопуха с тенью
                onPressed: () {
                  onPressed();
                },
                child: const Text('Добавить'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
