import 'package:flames/data.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bottom(context) {
  {
    showModalBottomSheet(
        backgroundColor: Colors.white.withOpacity(0),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return const Detailbottom();
        });
  }
}

class Detailbottom extends StatefulWidget {
  const Detailbottom({super.key});

  @override
  State<Detailbottom> createState() => _DetailbottomState();
}

class _DetailbottomState extends State<Detailbottom> {
  List<Widget> pageWidgets = [
    PgView(data: education),
    PgView(data: gender),
    PgView(data: orientation),
    PgView(data: work),
    PgView(data: children),
    PgView(data: converse),
    PgView(data: drink),
    PgView(data: lookingfor),
    PgView(data: political),
    PgView(data: pronoun),
    PgView(data: religion),
    PgView(data: smoke),
    PgView(data: workout),
    PgView(data: zodiac),
  ];

  int pageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: MediaQuery.of(context).size.height / 1.3,
        decoration:const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white),
        child: Column(
          children: <Widget>[
            
            Container(
              color: Colors.pink.withOpacity(0.05),
              padding: const EdgeInsets.fromLTRB(8, 18, 8, 0),
              child: StepProgressIndicator(
                  totalSteps: pageWidgets.length,
                  currentStep: pageIndex + 1,
                  selectedColor: Colors.pink.shade400),
            ),
            Expanded(
                child: PageView(
              onPageChanged: (int index) {
                setState(() {
                  pageIndex = index;
                });
              },
              controller: _pageController,
              children: pageWidgets,
            )),
            Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.pink.withOpacity(0.05),
                padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                child: SizedBox(
                  child: TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration:const Duration(milliseconds: 1000),
                          curve: Curves.ease);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 20, color: Colors.grey[850]),
                    ),
                  ),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.pink.withOpacity(0.05),
              padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.1,
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.pink[400]),
                    ),
                    onPressed: () {
                      _pageController.nextPage(
                          duration:const Duration(milliseconds: 1000),
                          curve: Curves.ease);
                    },
                    child:const Text(
                      "Next",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            )
          ],
        ));
  }
}

// ignore: must_be_immutable
class PgView extends StatefulWidget {
  List<String> data;
  PgView({super.key, required this.data});

  @override
  State<PgView> createState() => _PgViewState();
}

class _PgViewState extends State<PgView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink.withOpacity(0.05),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.data[0],
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 10),
            child: Text(widget.data[1],
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.pink[400],
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              alignment: Alignment.center,
              // height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                physics:const BouncingScrollPhysics(),
                itemCount: widget.data.length,
                itemBuilder: (context, index) {
                  return (index > 1)
                      ? Container(
                          margin:const EdgeInsets.all(8),
                          padding:const EdgeInsets.all(8),
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.pink.shade400),
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            widget.data[index],
                            style:const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        )
                      :const SizedBox(
                          height: 0,
                          width: 0,
                        );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
