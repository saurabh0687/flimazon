class CatelogModel
{
  static  List<Item> items=[
     Item(
      
  id:2000331550094,
  name:"iphone 12 pro max",
  desc:"128GB/256GB/512GB storage",
  price:6250,
  color:"Brown", 
  image:"https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-13-01.jpg")
    
  ];
}

class Item{
  final int id;
   final String name;
    final String desc;
    final num price;
    final String color;
    final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
    factory Item.fromMap(Map<String,dynamic>map)
  {
 return Item(
  id:map["id"],
   name:map["name"],
    desc:map["desc"],
     price:map["price"],
      color:map["color"],
       image:map["image"],
 );
  }
  toMap()=>{
    "id":id,
     "name":name,
     "desc":desc,
     "price":price,
     "color":color,
     "image":image,
  };
 
}

