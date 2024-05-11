
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.pink),
      // darkTheme: ThemeData(primarySwatch: Colors.pink.shade900),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnakBar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      //AppBar Context
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 97, 166),
        title: const Text('FLoRaL sHoP'),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 40,
        toolbarOpacity: 1, // Text color intensity high or low
        elevation: 1,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5))),
        shadowColor: Color.fromARGB(255, 104, 31, 94),
        actions: [
          IconButton(
              tooltip: 'Home Page',
              onPressed: () {
                MySnakBar('Home Page', context);
              },
              icon: const Icon(Icons.home)),
          IconButton(
              tooltip: 'Log in',
              onPressed: () {
                MySnakBar('Login Page', context);
              },
              icon: const Icon(Icons.login)),
          IconButton(
              tooltip: 'Setting Page',
              onPressed: () {
                MySnakBar('Setting Page', context);
              },
              icon: const Icon(Icons.settings))
        ],
      ),



      //Drawer Context
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 233, 145, 174),
        elevation: 10,
        shadowColor: Colors.white,

        child: ListView(
          children:  [
            DrawerHeader(
              child: CircleAvatar(
                  //backgroundColor: Color.fromARGB(255, 98, 14, 113),
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/17266268/pexels-photo-17266268/free-photo-of-single-daisy-on-rock.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  radius: 5,
                  child: Text(
                    'FLORAL',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),

              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175_1280.jpg"),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Profile'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('My Choice'),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Saved Image'),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit profile'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
            )
          ],
        ),
      ),



      //Floating Action Button
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: const Icon(Icons.add),
        tooltip: 'Floating Action Button',
        onPressed: () {
          MySnakBar('Floating Action Button', context);
        },
        backgroundColor: Color.fromARGB(255, 95, 3, 51),
      ),



      //Body Context
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            //color: Color.fromARGB(255, 233, 145, 174),
            color: Colors.pink[100]
            // image: DecorationImage(
            //     image: NetworkImage(
            //         'https://cdn.pixabay.com/photo/2016/04/16/12/50/chrysanthemum-1332994_1280.jpg'),
            //         fit: BoxFit.cover
            //          )
            ),



            //Starting 
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(           
            child: Column(
              children: [
                
                //1st Container , 1st child
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(0.0),
                        child: const Text(
                          "WelCome",
                          style: TextStyle(
                              color: Color.fromARGB(255, 12, 3, 26),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(0.0),
                        padding: const EdgeInsets.all(0.0),
                        child: const Text(
                          "All your favourites are here",
                          style: TextStyle(
                            color: Color.fromARGB(255, 1, 51, 51),
                            fontSize: 10,
                            fontWeight: FontWeight.w200,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                // 2nd child, 2nd row
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Most Popolar items:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),



                //3rd child,Most popular items 
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    //color: Color.fromARGB(255, 143, 235, 230),
                  ),


                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .2,
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 170, 240, 173),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/e/e7/Leucanthemum_vulgare_%27Filigran%27_Flower_2200px.jpg'),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .2,
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 170, 240, 173),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://media.istockphoto.com/id/155284830/photo/roses-and-petals.jpg?s=1024x1024&w=is&k=20&c=jVub0Ac-P-sM3ziJFJSSIGEHgjiwUGoeOEzrno6u3TA='),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .2,
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 170, 240, 173),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://static6.depositphotos.com/1011812/635/i/450/depositphotos_6354967-stock-photo-pink-flower.jpg'),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .2,
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 170, 240, 173),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://media.istockphoto.com/id/155284830/photo/roses-and-petals.jpg?s=1024x1024&w=is&k=20&c=jVub0Ac-P-sM3ziJFJSSIGEHgjiwUGoeOEzrno6u3TA='),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .2,
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 170, 240, 173),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://media.istockphoto.com/id/155284830/photo/roses-and-petals.jpg?s=1024x1024&w=is&k=20&c=jVub0Ac-P-sM3ziJFJSSIGEHgjiwUGoeOEzrno6u3TA='),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .2,
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 170, 240, 173),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://media.istockphoto.com/id/155284830/photo/roses-and-petals.jpg?s=1024x1024&w=is&k=20&c=jVub0Ac-P-sM3ziJFJSSIGEHgjiwUGoeOEzrno6u3TA='),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),


              //4th child
              Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Our Gallary:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),



                //5th Child
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    //color: Color.fromARGB(255, 143, 235, 230),
                  ),


                  child: Row(
                    children: [
                     
                     //1st gallay image
                      Container(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * .46,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            //color: const Color.fromARGB(255, 170, 240, 173),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2017/02/15/13/40/tulips-2068692_1280.jpg'),
                              fit: BoxFit.cover,
                            ),
                            
                            ),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                 
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Colors.white30,
                                        child: Text(
                                          '120',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          ),
                                         
                                        ),
                                      ),
                                    ],
                                 ),
                                ),
                                Expanded(
                                  
                                  
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [ 
                                      Text(
                                    'Tulip'
                                  ),
                                  Text('Purches'),
                                  SizedBox(height: 10,),],
                                  ),
                                )
                               
                                
                              ],
                            ),
                      ),


                      //2nd Gallary image
                    Container(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * .46,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            //color: const Color.fromARGB(255, 170, 240, 173),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/1167050/pexels-photo-1167050.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              fit: BoxFit.cover,
                            ),
                            
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 60,top: 0, bottom: 130),
                              //margin: EdgeInsets.only(left: 40),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white30,
                                child: Text(
                                  '100',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                 
                                ),
                              ),
                             
                            ),
                      ),  
                      
                    ],
                  ),
                ),


                //3rd Gallary image
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    //color: Color.fromARGB(255, 143, 235, 230),
                  ),
                  child: Row(
                    children: [
                     
                      Container(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * .46,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            //color: const Color.fromARGB(255, 170, 240, 173),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://static6.depositphotos.com/1011812/635/i/450/depositphotos_6354967-stock-photo-pink-flower.jpg'),
                              fit: BoxFit.cover,
                            ),
                            
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 60,top: 0, bottom: 130),
                              //margin: EdgeInsets.only(left: 40),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white30,
                                child: Text(
                                  '120',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                 
                                ),
                              ),
                             
                            ),
                      ),


                      
                    //4th gallay image
                    Container(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width * .46,
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            //color: const Color.fromARGB(255, 170, 240, 173),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/e/e7/Leucanthemum_vulgare_%27Filigran%27_Flower_2200px.jpg'),
                              fit: BoxFit.cover,
                            ),
                            
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 60,top: 0, bottom: 130),
                              //margin: EdgeInsets.only(left: 40),
                              child: CircleAvatar(
                                //radius: 50,
                                backgroundColor: Colors.white30,
                                child: Text(
                                  '100',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                 
                                ),
                              ),
                             
                            ),
                      ),  
                      
                    ],
                  ),
                ),
              ],
          ),
        ),
      ),
      ),



      //Bottom Navigartion Bar
      bottomNavigationBar: BottomNavigationBar(
        //fixedColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Store',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heat_pump_sharp),
            label: 'Wishlist',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'User',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
