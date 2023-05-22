import 'package:flutter/material.dart';
import 'package:todo/style/app_colors.dart';

class ShowAddTaskSheet extends StatefulWidget {
  const ShowAddTaskSheet({super.key});

  @override
  State<ShowAddTaskSheet> createState() => _ShowAddTaskSheetState();
}

class _ShowAddTaskSheetState extends State<ShowAddTaskSheet> {
  var kayMo = GlobalKey<FormState>();
  var slectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: kayMo,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Add new Task",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,

                // margin: EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter task title";
                    } else if (value.length < 6) {
                      return "please enter least 6 char";
                    }
                  },
                  // style: TextStyle(height: 2,locale: Locale.fromSubtags()),
                  decoration: InputDecoration(
                    errorStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 12, color: Colors.red),
                    label: Text(
                      "Enter task title",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ("please enter task description");
                  }
                },
                // style: TextStyle(height: 2,locale: Locale.fromSubtags()),
                decoration: InputDecoration(
                  label: Text(
                    "Task Description",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  errorStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 12, color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 30),
                child: Text(
                  "Select time",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    choooseDate(context);
                  },
                  child: Text(
                    slectedDate.toString().substring(0, 10),
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                    onPressed: () {
                      if (kayMo.currentState!.validate()) {
                        print("ahmed");
                      }
                    },
                    child: Text(
                      "Add Task",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> choooseDate(BuildContext context) async {
    DateTime? chosenDate = await showDatePicker(
        context: context,
        builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
              primary: Colors.lightGreenAccent,
              onPrimary: Colors.black45,
              onSurface: colors.Primarycolor,
            )),
            child: child!),
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365)));
    slectedDate = chosenDate!;
    setState(() {});
  }
}
