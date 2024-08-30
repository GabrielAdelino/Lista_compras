import 'package:flutter/material.dart';

class UserInputCard extends StatefulWidget {
  final String title;

  UserInputCard({required this.title});

  @override
  _UserInputCardState createState() => _UserInputCardState();
}

class _UserInputCardState extends State<UserInputCard> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isChecked = false;

@override
void initState() {
  super.initState();
  _focusNode.addListener(() {
    setState(() {});
  });
}

@override
void dispose() {
  _focusNode.dispose();
  _controller.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    decoration: InputDecoration(
                      hintText: 'Adicione um item',
                      border: InputBorder.none,
                      prefixIcon: _focusNode.hasFocus
                          ? Icon(Icons.local_mall_rounded)
                          : null,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        )
                      ),    
                    ),
                  ),
                ),
                SizedBox(width: 16.0), // Espaço entre o TextField e a Checkbox
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
