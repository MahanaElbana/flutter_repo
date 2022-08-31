import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class Message {
  final String text;
  final bool isSentByMe;
  final DateTime date;

  Message({required this.text, required this.isSentByMe, required this.date});
}

List<Message> messages = [
  Message(
    text: "hello data!",
    isSentByMe: false,
    date: DateTime.now().subtract(const Duration(minutes: 1)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: false,
    date: DateTime.now().subtract(const Duration(minutes: 1)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: false,
    date: DateTime.now().subtract(const Duration(minutes: 1)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: false,
    date: DateTime.now().subtract(const Duration(minutes: 1)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: false,
    date: DateTime.now().subtract(const Duration(minutes: 1)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: false,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 2)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 4)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: false,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 5)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 10)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 10)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 10)),
  ),
  Message(
    text: "how are you ya pro!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 5)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 5)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 5)),
  ),
  Message(
    text: "hello data!",
    isSentByMe: true,
    date: DateTime.now().subtract(const Duration(minutes: 1, days: 5)),
  ),
].reversed.toList();

class ChatScreenDialog extends StatefulWidget {
  const ChatScreenDialog({Key? key}) : super(key: key);

  @override
  State<ChatScreenDialog> createState() => _ChatScreenDialogState();
}

class _ChatScreenDialogState extends State<ChatScreenDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("conversation"),
      ),
      body: Column(
        children: [

          //-- -- --- --- --- - -- body of messages -- --- --- --- --//
          Expanded(
            child: GroupedListView<Message, DateTime>(
              physics: const BouncingScrollPhysics(),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: messages,
              groupBy: (Message message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message messages) => SizedBox(
                height: 40.0,
                child: Center(
                  child: Card(
                    color: Theme.of(context).colorScheme.primary,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(DateFormat.yMMMd().format(messages.date)),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                  ),
                  //shape: ShapeDecoSration(),
                  elevation: 8.0,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            ),
          ),
          //-- writting text from here ----//

          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(25.0)),
              color: Theme.of(context).bottomAppBarColor,
            ),
            child: TextField(
              decoration: const InputDecoration(
                hintText: " type your message here ..",
                contentPadding: EdgeInsets.all(12.0),
              ),
              onSubmitted: ((text) {
                final Message message =
                    Message(text: text, isSentByMe: true, date: DateTime.now());
                setState(() {
                  messages.add(message);
                });
              }),
            ),
          ),
        ],
      ),
    );
  }
}
