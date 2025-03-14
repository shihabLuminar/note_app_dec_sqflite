import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_app_dec_sqflite/view/add_note_screen/add_note_screen.dart';
import 'package:note_app_dec_sqflite/view/note_details_screen/note_details_screen.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          elevation: 10,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNoteScreen(),
                ));
          },
          foregroundColor: Colors.white,
          child: Icon(
            Icons.add,
            size: 45,
          ),
        ),
        endDrawer: Drawer(),
        appBar: AppBar(
          leading: Center(child: CircleAvatar()),
          title: Text(
            "Shihab",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "My Notes",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            // Center(
            //   child: TabBar(
            //     tabAlignment: TabAlignment.center,
            //     unselectedLabelColor: Colors.white,
            //     labelColor: Colors.black,
            //     isScrollable: true,
            //     indicatorPadding: EdgeInsets.zero,
            //     labelPadding: EdgeInsets.symmetric(horizontal: 10),
            //     padding: EdgeInsets.zero,
            //     labelStyle:
            //         TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //     indicator: BoxDecoration(
            //         borderRadius: BorderRadius.circular(100),
            //         color: Colors.white),
            //     indicatorSize: TabBarIndicatorSize.label,
            //     dividerHeight: 0,
            //     tabs: [
            //       Container(
            //           padding: EdgeInsets.symmetric(horizontal: 10),
            //           decoration: BoxDecoration(
            //             border: Border.all(color: Colors.white),
            //             borderRadius: BorderRadius.circular(100),
            //           ),
            //           child: Tab(text: "cat 1", height: 30)),
            //       Container(
            //           padding: EdgeInsets.symmetric(horizontal: 10),
            //           decoration: BoxDecoration(
            //             border: Border.all(color: Colors.white),
            //             borderRadius: BorderRadius.circular(100),
            //           ),
            //           child: Tab(text: "cat 1", height: 30)),
            //       Container(
            //           padding: EdgeInsets.symmetric(horizontal: 10),
            //           decoration: BoxDecoration(
            //             border: Border.all(color: Colors.white),
            //             borderRadius: BorderRadius.circular(100),
            //           ),
            //           child: Tab(text: "cat 1", height: 30)),
            //       Container(
            //           padding: EdgeInsets.symmetric(horizontal: 10),
            //           decoration: BoxDecoration(
            //             border: Border.all(color: Colors.white),
            //             borderRadius: BorderRadius.circular(100),
            //           ),
            //           child: Tab(text: "cat 1", height: 30)),
            //     ],
            //   ),
            // ),
            Expanded(
              child: MasonryGridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NoteDetailsScreen(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Note Title",
                          maxLines: 3,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          textAlign: TextAlign.justify,
                          maxLines: index + 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.date_range),
                            Text(
                              "20/05/2025",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
