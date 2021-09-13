class PostModel
{

  String name,text,profileImage,time;
  String? images ;
  int like,comments ;
  PostModel({required this.text,required this.name,this.images,required this.time,required this.profileImage,required this.comments,required this.like}) ;
}