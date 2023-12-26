import 'package:flutter/material.dart';

import '../../../resource/strings.dart';

class QuestionListPage extends StatefulWidget {
  const QuestionListPage({super.key});

  @override
  State<QuestionListPage> createState() => _QuestionListPageState();
}

class _QuestionListPageState extends State<QuestionListPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderListQuestion(),
        const ListTopMember(),

      ],
    );
  }
}

class ListTopMember extends StatelessWidget {
  const ListTopMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            Strings.titleElementTopMember,
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 14),
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return const ItemTopMember();
                },
                scrollDirection: Axis.horizontal,
                itemCount: 22),
          )
        ],
      ),
    );
  }
}

class ItemTopMember extends StatelessWidget {
  const ItemTopMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      width: 72,
      child: const Column(
        children: [
          // Image.network('', width: 48, height: 48,),
          Icon(
            Icons.contacts_sharp,
            size: 48,
          ),
          Text('Name ba')
        ],
      ),
    );
  }
}

class HeaderListQuestion extends StatelessWidget {
  const HeaderListQuestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Strings.titleQuestionListScreen,
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 17),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
