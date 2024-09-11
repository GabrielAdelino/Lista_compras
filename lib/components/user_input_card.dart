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
                      border: OutlineInputBorder(),
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
                CustomCheckbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                  icon: Icons.check_circle,
                  iconSize: 24.0,
                  activeColor: const Color.fromARGB(255, 26, 211, 35),
                  checkColor: Colors.white,
                ),
              ],
            ),
               SizedBox(height: 8.0), // Espaço após a Row
            Divider( // Linha abaixo do input e checkbox
              color: Colors.grey[600],
              thickness: 2.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  final IconData icon;
  final double iconSize;
  final Color activeColor;
  final Color checkColor;

  const CustomCheckbox({super.key, 
    required this.value,
    required this.onChanged,
    required this.icon,
    this.iconSize = 24.0,
    this.activeColor = Colors.blue,
    this.checkColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value ? activeColor : Colors.grey.withOpacity(0.5),
          border: Border.all(
            color: value ? activeColor : Colors.grey.withOpacity(0.5),
            width: 2.0,
          ),
        ),
        width: iconSize + 12.0,
        height: iconSize + 12.0,
        child: value
            ? Icon(
                icon,
                size: iconSize,
                color: checkColor,
              )
            : null,
      ),
    );
  }
}