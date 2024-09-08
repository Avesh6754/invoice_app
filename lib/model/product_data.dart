
class Invoice{
   String? pro_title,pro_category,pro_Image;
   int? pro_qty,pro_id;
   var pro_price;

  Invoice(this.pro_category,this.pro_Image,this.pro_title,this.pro_price,this.pro_qty,this.pro_id
      );

  factory Invoice.fromMap(Map m1)
  {
    return Invoice(m1['category'], m1['image'], m1['title'],m1['price'],m1['qty'],m1['id']);
  }
}