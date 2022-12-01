import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recharge/homeprovider.dart';
import 'package:recharge/modeldata.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("All in One Recharge"),
          actions: [Icon(Icons.settings)],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                child: Text(
                  "Recharges & Bill Payments",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: Provider.of<homeprovider>(context,listen: true).rechargedata.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Provider.of<homeprovider>(context,listen: false).datapicker = modeldata(
                              link: Provider.of<homeprovider>(context,listen: false).rechargedata[index].link,
                            );
                            Navigator.pushNamed(context, 'web');
                          },
                          child: Container(
                            height: 85,
                            width: 85,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(Provider.of<homeprovider>(context,listen: false).rechargedata[index].image as String)),
                          ),
                        ),

                        Text("${Provider.of<homeprovider>(context,listen: false).rechargedata[index].name}")
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
