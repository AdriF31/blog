import 'package:blog/ui/article/update/update_article_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateArticlePage extends StatelessWidget {
  const UpdateArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UpdateArticleController>(
        init: UpdateArticleController(),
        builder: (c) => Scaffold(
              appBar: AppBar(
                title: const Text('Update Artikel'),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          c.getSinglePhoto();
                        },
                        child: Container(
                          width: Get.size.width * 0.9,
                          height: Get.size.width * 0.9,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.redAccent)),
                          child: c.gettedPhoto != null
                              ? Image.file(
                                  c.gettedPhoto!,
                                  fit: BoxFit.fill,
                                )
                              : Image.network(
                                  c.articleDetailModel?.data?.image ?? '',
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Center(
                                          child: Text(
                                    'tunggu bentar bang...',
                                    style: GoogleFonts.montserrat(fontSize: 20),
                                  )),
                                ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title',
                            style: GoogleFonts.montserrat(fontSize: 16),
                          ),
                          TextFormField(
                            controller: c.titleController
                              ..text = c.articleDetailModel?.data?.title ?? '',
                            decoration: InputDecoration(
                                focusColor: Colors.green,
                                hoverColor: Colors.amber,
                                hintText: 'title',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Content',
                            style: GoogleFonts.montserrat(fontSize: 16),
                          ),
                          TextFormField(
                            controller: c.contentController
                              ..text =
                                  c.articleDetailModel?.data?.content ?? '',
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                                focusColor: Colors.green,
                                hintText: 'content',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          c.updateBlog();
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            'post',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
