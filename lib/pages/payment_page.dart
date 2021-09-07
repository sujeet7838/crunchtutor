import 'package:crunchtutor/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

class PaymentOptionPage extends StatefulWidget {
  @override
  _PaymentOptionState createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f7ff),
      appBar: AppBar(
        backgroundColor: Color(0xfff4f7ff),
        title: SizedBox(child: Text("Payment Option", style: TextStyle(fontSize: 13),)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notification_add,
              color: Color(0xff0c3053),
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle_sharp,
              color: Color(0xff0c3053),
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      // body: Center(child: CustomFilePicker()),
        drawer: MyDrawer(),
    );
  }
}
// class CustomFilePicker extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return _CustomFilePicker();
//   }
// }
// class _CustomFilePicker extends State<CustomFilePicker>{

//   File selectedfile;
//    Response response;
//   String progress;
//   Dio dio = new Dio();

//   selectFile() async {
//      selectedfile = await FilePicker.getFile(
//           type: FileType.custom,
//           allowedExtensions: ['jpg', 'pdf', 'png'],
//           //allowed extension to choose
//      );
     
     
//     //for file_pocker plugin version 2 or 2+
//     /*
//     FilePickerResult result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['jpg', 'pdf', 'mp4'],
//       //allowed extension to choose
//     );

//     if (result != null) {
//       //if there is selected file
//       selectedfile = File(result.files.single.path);
//     } */
    
//      setState((){}); //update the UI so that file name is shown
//   }
//   uploadFile() async {
//      String uploadurl = "https://crunchtutor.com/api/upload-files";
//      //dont use http://localhost , because emulator don't get that address
//      //insted use your local IP address or use live URL
//      //hit "ipconfig" in windows or "ip a" in linux to get you local IP

//      FormData formdata = FormData.fromMap({
//           "file": await MultipartFile.fromFile(
//                  selectedfile.path, 
//                  filename: basename(selectedfile.path) 
//                  //show only filename from path
//            ),
//       });

//       response = await dio.post(uploadurl, 
//           data: formdata,
//           onSendProgress: (int sent, int total) {
//               String percentage = (sent/total*100).toStringAsFixed(2);
//               setState(() {
//                    progress = "$sent" + " Bytes of " "$total Bytes - " +  percentage + " % uploaded";
//                    //update the progress
//               });
//           },);
          
//       if(response.statusCode == 200){
//             print(response.toString()); 
//             //print response from server
//       }else{ 
//           print("Error during connection to server.");
//       }
//   }
//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//          appBar: AppBar(
//              title:Text("Select File and Upload"),
//              backgroundColor: Colors.orangeAccent,
//          ), //set appbar
//          body:Container( 
//             alignment: Alignment.center,
//              padding: EdgeInsets.all(40),
//              child:Column(children: <Widget>[

//                   Container( 
//                       margin: EdgeInsets.all(10),
//                       //show file name here
//                       child:progress == null?
//                             Text("Progress: 0%"):
//                             Text(basename("Progress: $progress"), 
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 18),),
//                       //show progress status here
//                   ),
                  
//                   Container( 
//                       margin: EdgeInsets.all(10),
//                       //show file name here
//                       child:selectedfile == null?
//                             Text("Choose File"):
//                             Text(basename(selectedfile.path)),
//                       //basename is from path package, to get filename from path
//                       //check if file is selected, if yes then show file name
//                   ),

//                   Container( 
//                      child:RaisedButton.icon(
//                        onPressed: (){
//                          selectFile();
//                        },
//                        icon: Icon(Icons.folder_open), 
//                        label: Text("CHOOSE FILE"),
//                        color: Colors.redAccent,
//                        colorBrightness: Brightness.dark,
//                       )
//                   ),

//                   //if selectedfile is null then show empty container
//                   //if file is selected then show upload button
//                   selectedfile == null?
//                   Container():
//                   Container( 
//                      child:RaisedButton.icon(
//                        onPressed: (){ 
//                          uploadFile();
//                        }, 
//                        icon: Icon(Icons.folder_open), 
//                        label: Text("UPLOAD FILE"),
//                        color: Colors.redAccent,
//                        colorBrightness: Brightness.dark,
//                       )
//                   )
                  
//              ],)
//          )
//       );
//   }
// }



 