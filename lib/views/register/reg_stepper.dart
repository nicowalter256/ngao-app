import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import 'package:intl/intl.dart';
import '../../widgets/custom_border_text_field.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/form_label.dart';

class RegStepper extends StatefulWidget {
  const RegStepper({super.key});

  @override
  State<RegStepper> createState() => _RegStepperState();
}

class _RegStepperState extends State<RegStepper> {
  int _currentStep = 0;
  TextEditingController fnController = TextEditingController();
  TextEditingController lnController = TextEditingController();
  TextEditingController mnController = TextEditingController();
  TextEditingController firstName = TextEditingController();
  StepperType stepperType = StepperType.horizontal;
  DateTime formValue = DateTime.now();
  final DateTime firstAllowedDate = DateTime(DateTime.now().year);

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: stepperType,
      physics: const ScrollPhysics(),
      currentStep: _currentStep,
      onStepTapped: (step) => tapped(step),
      onStepContinue: continued,
      onStepCancel: cancel,
      controlsBuilder: (context, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            if (_currentStep != 2)
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: CustomButton(
                  name: "Continue",
                  onPress: () => {continued()},
                  btnColor: yellowBG,
                  textColor: whiteBG,
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: CustomButton(
                name: "Prev",
                onPress: () => {cancel()},
                btnColor: yellowBG,
                textColor: whiteBG,
              ),
            )
          ],
        );
      },
      steps: <Step>[
        Step(
          stepStyle: StepStyle(
            gradient: _currentStep == 0
                ? const LinearGradient(colors: <Color>[yellowBG, yellowBG])
                : const LinearGradient(colors: <Color>[greenBG, greenBG]),
            indexStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
          title: const Text(''),
          subtitle: Text(
            '',
            style: GoogleFonts.mulish(
              textStyle: const TextStyle(
                  fontSize: 10, color: blackBG, fontWeight: FontWeight.bold),
            ),
          ),
          content: Column(
            children: <Widget>[
              CustomBorderTextField(
                isRequired: true,
                labelText: "First name",
                controller: fnController,
                keyboardType: TextInputType.name,
                hintText: 'Enter first name',
              ),
              CustomBorderTextField(
                isRequired: true,
                labelText: "Last name",
                controller: lnController,
                keyboardType: TextInputType.name,
                hintText: 'Enter last name',
              ),
              CustomBorderTextField(
                isRequired: true,
                labelText: "Mobile number",
                controller: mnController,
                keyboardType: TextInputType.name,
                hintText: 'Enter mobile number',
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FormLabel(
                    labelText: 'Date of Birth',
                    isRequired: true,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  InkWell(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        firstDate: firstAllowedDate,
                        initialDate: DateTime.now(),
                        lastDate: DateTime(DateTime.now().year, 12, 31),
                      );

                      if (pickedDate != null) {
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        setState(() {
                          formValue = pickedDate;
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: blackBG,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.calendar,
                            color: Colors.green,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            formValue == null
                                ? 'Select date'
                                : DateFormat.yMMMMEEEEd().format(formValue),
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
        Step(
          stepStyle: StepStyle(
            gradient: _currentStep != 2
                ? const LinearGradient(colors: <Color>[yellowBG, yellowBG])
                : const LinearGradient(colors: <Color>[greenBG, greenBG]),
            indexStyle: const TextStyle(color: Colors.white),
          ),
          title: const Text(''),
          content: Column(
            children: <Widget>[
              CustomDropdown(label: "Select ID Type"),
              CustomBorderTextField(
                isRequired: true,
                labelText: "ID Number",
                controller: lnController,
                keyboardType: TextInputType.name,
                hintText: 'Enter ID Number',
              ),
              CustomDropdown(label: "Select Gender"),
              const SizedBox(height: 10),
              CustomDropdown(label: "Select Residence"),
              const SizedBox(height: 10),
              CustomDropdown(label: "Select Country"),
            ],
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
        ),
        Step(
          title: const Text(''),
          stepStyle: const StepStyle(
            gradient: LinearGradient(colors: <Color>[yellowBG, yellowBG]),
            indexStyle: TextStyle(color: Colors.white),
          ),
          content: Column(
            children: <Widget>[
              Row(
                children: [
                  Checkbox(
                    checkColor: whiteBG,
                    activeColor: yellowBG,
                    value: true,
                    onChanged: (value) {
                      // setState(() {
                      //   check = !check;
                      // });
                    },
                  ),
                  Text(
                    "I agree the terms and conditions",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(color: greenBG),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPress: () => {},
                name: "Confirm and Finish",
                btnColor: yellowBG,
                textColor: whiteBG,
              ),
            ],
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
        ),
      ],
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
