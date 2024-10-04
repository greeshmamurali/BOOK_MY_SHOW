import 'package:flutter/material.dart';
import 'package:flutter_clone_book/dummydb.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:flutter_clone_book/utils/constants/image_constants.dart';
import 'package:flutter_clone_book/view/buyOrRent/buyOrRent.dart';
import 'package:flutter_clone_book/view/contact_details/contact_details.dart';

class BookPayment extends StatefulWidget {
  int index;
  String type;
  String price;
  String email;
  String phno;
  BookPayment(
      {required this.index,
      required this.type,
      required this.price,
      required this.email,
      required this.phno,
      super.key});

  @override
  State<BookPayment> createState() => _BookPaymentState();
}

class _BookPaymentState extends State<BookPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 230, 230),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 230, 230),
        leading: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.1),
                          child: Center(
                            child: Text(
                              'BookMyShow',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15),
                          child: Text(
                            'Are you sure that you want to cancel your transaction?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConstants.GREY_COLOR,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: ColorConstants.SEC4_GREY_COLOR
                                              .withOpacity(.4))),
                                  child: Center(
                                    child: Text(
                                      'NO',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Buyorrent(
                                              index: widget
                                                  .index) 
                                          ),
                                      (route) => route
                                          .isFirst 
                                      );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: ColorConstants.SEC4_GREY_COLOR
                                              .withOpacity(.4))),
                                  child: Center(
                                    child: Text(
                                      'YES',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Confirm booking',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              titleContainer(),
              ordertotalContainer(),
              SizedBox(
                height: 10,
              ),
              detailsContainer(),
        
               SizedBox(
                height: 10,
              ),
        
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Apply offers',style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16
                      ),),
        
                      Icon(Icons.chevron_right,color: ColorConstants.GREY_COLOR,)
                    ],
                  ),
              ),
        
              SizedBox(height: 10,),
        
        
              paymentContainer(),

              SizedBox(height: 10,),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.white),
                child: Text('By proceeding , I express my consent to complete this transaction',
                 style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.w600,fontSize: 13
                              ),),

              ),

               SizedBox(height: 15,),

             
            ],
          ),
        ),
        
      ),
      bottomNavigationBar:  BottomAppBar(
        height: 70,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total',
                        style: TextStyle(
                          color: ColorConstants.GREY_COLOR,fontSize: 13,fontWeight: FontWeight.w500
                        ),),

                        Text('₹${widget.price}.00',
                        style: TextStyle(
                          color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),


                    Container(
                      padding: EdgeInsets.symmetric(vertical: 6,horizontal: 40),
                      decoration: BoxDecoration(
                        color: ColorConstants.PRIMARY_COLOR,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text('Continue',
                      style: TextStyle(
                        color: Colors.white,fontSize: 18
                      ),),
                    )
                  ],
                ),
              ),
    );
  }

  Container paymentContainer() {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Choose Payment Method',
                    style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16
                    ),),
      
                    SizedBox(height: 5,),
      
                    Divider(height: 1,color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),),
      
                    SizedBox(height: 9,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(ImageConstants.RUPAY,height: 20,fit: BoxFit.cover,),
                        SizedBox(width: 6,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Federal Bank Credit Card',
                              style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17
                              ),),
                              
                              Text('₹200 additional cahback on CRED on payments via any CC. Applicable once for new to CRED users.\nThis card does not require CVV',
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.w300,fontSize: 13
                              ),)
                            ],
                          ),
                        ),
                            
                        SizedBox(width: 5,),
                            
                        Icon(Icons.chevron_right,color: Colors.black,)
                      ],
                    ),
      
                     SizedBox(height: 5,),
      
                    Divider(height: 1,color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),),
      
                    SizedBox(height: 9,),
      
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(ImageConstants.UPI,height: 20,fit: BoxFit.fill,),
      
                        SizedBox(width: 6,),
      
                        Text('Pay by any UPI App',
                        style: TextStyle(
                          color: ColorConstants.SEC4_GREY_COLOR,fontSize: 17
                        ),),
      
                        Spacer(),
      
                        Icon(Icons.chevron_right,color: Colors.black,)
      
      
                      ],
                    ),
      
                     SizedBox(height: 7,),
      
                    Divider(height: 1,color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),),
      
                    SizedBox(height: 9,),
      
      
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(ImageConstants.DEBIT_CARD,height: 30,fit: BoxFit.cover,),
                        SizedBox(width: 6,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Debit/Credit Card',
                              style: TextStyle(
                                color: ColorConstants.SEC4_GREY_COLOR,fontSize: 17
                              ),),
                                  
                              Text('₹200 additional cahback on CRED on payments via any CC. Applicable once for new to CRED users.\nThis card does not require CVV',
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: ColorConstants.SEC4_GREY_COLOR,fontSize: 13
                              ),)
                            ],
                          ),
                        ),
      
                        SizedBox(width: 5,),
      
                        Icon(Icons.chevron_right,color: Colors.black,)
                      ],
                    ),
      
      
                     SizedBox(height: 5,),
      
                    Divider(height: 1,color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.2),),
      
                    SizedBox(height: 9,),
      
                    Row(
                      children: [
                        Text('More Payment Options',
                        style: TextStyle(
                              color: ColorConstants.SEC4_GREY_COLOR,fontWeight: FontWeight.w300,fontSize: 17
                        ),)
                      ],
                    )
      
      
      
      
                  ],
                ),
      
            );
  }

  Container detailsContainer() {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Your details',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            children: [
                          TextSpan(
                              text: ' (For sending booking details)',
                              style: TextStyle(
                                  color: ColorConstants.GREY_COLOR,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold))
                        ])),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      ContactDetails(),
                  transitionsBuilder: itionAnimation,
                ));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit_outlined,
                            color: ColorConstants.PRIMARY_COLOR,
                          ),
                          Text(
                            ' Edit',
                            style: TextStyle(
                                color: ColorConstants.PRIMARY_COLOR,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                SizedBox(height: 8,),

                Text(widget.email,style: TextStyle(
                  color: ColorConstants.GREY_COLOR,fontSize: 14,fontWeight: FontWeight.bold
                ),),
                Text(widget.phno,
                style: TextStyle(
                   color: ColorConstants.GREY_COLOR,fontSize: 14,fontWeight: FontWeight.bold
                ),)
              ],
            ),
          );
  }

  Container ordertotalContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ticket(s) price',
                style: TextStyle(
                    color: ColorConstants.GREY_COLOR,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '₹${widget.price}.00',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Convinience fees',
                style: TextStyle(
                    color: ColorConstants.GREY_COLOR,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '₹0.00',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '🪷 Donate to BookAChange',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '₹0.00',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                    text: '(₹1 per ticket)  ',
                    style: TextStyle(
                        color: ColorConstants.GREY_COLOR,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: 'VIEW T&C',
                          style: TextStyle(
                              color: ColorConstants.GREY_COLOR,
                              fontSize: 12,
                              decoration: TextDecoration.underline))
                    ]),
              ),
              Text(
                'Add ₹1.00',
                style: TextStyle(
                    color: ColorConstants.PRIMARY_COLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Divider(
            height: 1,
            color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.4),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order total',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              Text(
                '₹${widget.price}.00',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }

  Container titleContainer() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      //height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Dummydb.section11[widget.index]['name'],
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            widget.type,
            style: TextStyle(
                color: ColorConstants.GREY_COLOR, fontWeight: FontWeight.w800),
          )
        ],
      ),
    );
  }
}
