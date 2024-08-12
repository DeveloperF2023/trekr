part of 'widgets_imports.dart';

class PostItem extends StatelessWidget {
  final bool? isGradient;
  final String? content;
  final bool? isImage;
  final String? imageUrl; // Added imageUrl parameter
  const PostItem(
      {super.key, this.isGradient, this.content, this.isImage, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: null,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      width: HelperFunctions.screenWidth(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.blueChalk,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.avatar,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Claire Dangais",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "@ClaireD15",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          isImage == true
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
                      child: Text(
                        content!,
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: HelperFunctions.screenHeight(context) * .27.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "http://213.130.144.203:8084/files/$imageUrl"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              : Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
                  child: Text(
                    content!,
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
          Container(
            height: 48.h,
            decoration: BoxDecoration(
              gradient: isGradient == true ? AppColors.gradient : null,
              color:
                  isGradient == false ? Colors.black.withOpacity(0.33) : null,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.r),
                bottomLeft: Radius.circular(20.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () async {
                              SharedPreferences preferences =
                                  await SharedPreferences.getInstance();
                              int userId = preferences.getInt("userId")!;
                              Navigator.pushNamed(
                                context,
                                NavigationStrings.message,
                                arguments: userId,
                              );
                            },
                            child: Icon(
                              Icons.message,
                              color: Colors.white,
                              size: 25.sp,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "10",
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 15.w),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 25.sp,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "122",
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(AppAssets.send),
                      SizedBox(width: 15.w),
                      Image.asset(AppAssets.huge),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
