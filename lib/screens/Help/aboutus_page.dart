
import 'package:easybuyer/screens/Help/help_page.dart';
import 'package:flutter/material.dart';

class AboutusPage extends StatefulWidget {
  const AboutusPage({Key? key}) : super(key: key);

  @override
  State<AboutusPage> createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff966f33),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height*0.058,
                bottom: mQuery.size.height*0.03,
                left: mQuery.size.width*0.045,
                right: mQuery.size.width*0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HelpPage();
                      }));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  Text(
                    "About Us",
                    style: TextStyle(
                        fontSize: mQuery.size.height*0.027,
                        color: Colors.white,
                      fontFamily: 'SatoshiBold',),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: mQuery.size.height*0.028,
                    left: mQuery.size.width*0.045,
                    right: mQuery.size.width*0.045,
                  ),
                  child: Text("Lorem ipsum dolor sit amet consectetur "
                      "adipisicing elit. Debitis voluptate dolor "
                      "doloremque amet fuga tempora ad ex molestias soluta non aperiam odio, labore eum ullam excepturi minus libero? Cupiditate laborum mollitia assumenda nnulla doloremque sapiente corporis! Numquam quae voluptates magni suscipit dolores molestiae, deserunt aliquam obcaecati officiis cum eveniet iure architecto nostrum fuga facere incidunt soluta eligendi sed dolorum, quo repellendus distinctio aspernatur consectetur! Beatae repudiandae, consequatur quod hic quae nam blanditiis assumenda placeat necessitatibus dolore nihil est. Expedita delectus.",
                  style: TextStyle(
                      fontSize: mQuery.size.height*0.0178,
                    fontFamily: 'SatoshiMedium',
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
