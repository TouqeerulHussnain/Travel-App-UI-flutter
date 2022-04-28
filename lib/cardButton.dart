import 'package:flutter/material.dart';
import 'package:travle_booking_app/textStye.dart';
Container cardbutton({required text, required subtext, required image,}) {
    return Container(
                
                width: 200,
                child: Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),),
                  elevation: 10,
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                          width: 80,
                        margin: EdgeInsets.all(5),
                        child: Image.asset(image),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: ListTile(
                          
                          title: Text(text),
                          subtitle: Text(subtext)
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }

