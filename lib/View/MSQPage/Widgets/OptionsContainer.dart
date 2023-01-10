import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quizz/Manager/TextStyleManager.dart';
import '../../../Constants/Constants.dart';
import '../../../Constants/Controllers.dart';
import '../../../SingleOptionPicker.dart';
import '../../../Test.dart';



class OptionsContainer extends StatelessWidget {
  const OptionsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: SizedBox(
          width: 310,
          height: 250,
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: optionsPageController.value,
            scrollDirection: Axis.horizontal,
            itemCount: questionData == [] ? 0 : questionData.length,
            itemBuilder: (context, index) {
              current.value = index;
              return

                Container(
                  width: 320,
                  height: 400,
                  margin: const EdgeInsets.only(
                      left: 10,
                      bottom: 40
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:

                  Obx(
                     () {
                      return SingleOptionPicker(
                                numberOfOptions: 4,
                                optionBuilder: (index, isSelected)
                                {
                                  return
                                   AnimatedContainer(
                                        margin: const EdgeInsets.all(5),
                                        duration: const Duration(milliseconds: 300),
                                        height: 150,
                                        width: 280,
                                        decoration: BoxDecoration(
                                          color: isSelected
                                              ? Colors.indigo.shade900
                                              : Colors.transparent,
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Colors.indigo.shade900,
                                          ),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              questionData[current.value].options![index].toString(),
                                              textAlign: TextAlign.start,
                                              style: isSelected ? optionsWhite : optionsBlack,
                                            ),
                                          ),
                                        ),
                                      );

                          },
                                onChangeOption: (index) {
                                  questionData[current.value].selectedOption = index;
                                  selected.value = questionData[current.value].selectedOption!;

                                },
                                selectedOptionIndex: selected.value
                        ///questionData[current.value].selectedOption
                              );
                    }
                  )


              );
            }
          ),
        ),
      );
  }
}

