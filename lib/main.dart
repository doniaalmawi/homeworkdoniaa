import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: homeecard(),
  ));
}

class homeecard extends StatefulWidget {
  @override
  _HomeECardState createState() => _HomeECardState();
}

class _HomeECardState extends State<homeecard> {
  bool showText = false;

  void toggleText() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(
              Icons.account_circle,
              color: Color.fromARGB(164, 155, 25, 153),
            ),
            SizedBox(width: 10),
            Text(
              'Student Card',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 6, 0, 5),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(121, 147, 193, 220),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/bck.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  toggleText();
                },
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: showText
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ' N a m e : D o n i a A l  m a w i',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                'I d s t u d e n t : 5 1 8 1 0 4 5',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          )
                        : Positioned(
                            top: MediaQuery.of(context).size.height * 2.4,
                            left: MediaQuery.of(context).size.width * 0.55,
                            child: GestureDetector(
                              onTap: () {
                                toggleText();
                              },
                              child: Image.asset(
                                'image/bott.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
