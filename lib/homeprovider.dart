import 'package:flutter/material.dart';
import 'package:recharge/modeldata.dart';

class homeprovider extends ChangeNotifier
{
  List<modeldata> rechargedata = [
    modeldata(name: "VI",image: "https://www.indiantelevision.com/sites/default/files/images/tv-images/2020/09/09/vi.jpg",link: "https://www.myvi.in/"),
    modeldata(name: "Airtel",image: "https://s3-ap-southeast-1.amazonaws.com/bsy/iportal/images/airtel-logo-white-text-vertical.jpg",link: "https://www.airtel.in/"),
    modeldata(name: "Torrent",image: "https://play-lh.googleusercontent.com/MOF_DggLBpZm2vLjUCb_4F-dW8szpf0EvORBKhJqFMcKD9WymtdUxAiuJGYbc1_fYA",link: "https://www.torrentpower.com/index.php/site/indexs"),
    modeldata(name: "Jio",image: "https://www.logotaglines.com/wp-content/uploads/2016/08/reliance-jio-logo-red.jpg",link: "https://www.jio.com/"),
    modeldata(name: "DGVCL",image: "https://play-lh.googleusercontent.com/40oCtfuqGgYriiiaOALTNGfu4vJ-k0YXu3EVV91icdcuSR-4zRrbZ7P6ZzzS5--dyQ",link: "https://www.dgvcl.com/"),
    modeldata(name: "Amazon Pay",image: "https://pbs.twimg.com/profile_images/1214220012979920898/N4tFtfjN_400x400.png",link: "https://www.amazon.in/amazonpay/home"),
    modeldata(name: "BSNL",image: "https://www.sajanspeaks.com/wp-content/uploads/2017/10/bsnl-logo.jpg",link: "https://www.bsnl.co.in/"),
    modeldata(name: "Gujrat Gas",image: "https://play-lh.googleusercontent.com/DcWO7nl5eNTyzfT3kZ0YMUqQod1a2bpGqhpKuF4U6DzRc3zQysWV4J8IqMAuwdGrbg",link: "https://www.gujaratgas.com/"),
    modeldata(name: "TATA Sky",image: "https://www.exchange4media.com/news-photo/109297-image-2020-11-27T085408.991.jpg",link: "https://www.tataplay.com/dth/set-top-box/tata-play-binge-plus?utm_source=google&utm_medium=cpc&utm_campaign=Search+%7C+DemandGen+%7C+ROI+%7C+All+India+%7C+Top+keywords+%7C+Top+Location+%7C+Exp+%7C+Binge+%7C+Tata+Sky&utm_id=14632662425&utm_campaignid=14632662425&pl=&kw=tata%20sky&ch=g&mrktparam=&gclid=CjwKCAjwhNWZBhB_EiwAPzlhNlQC9XJcNG_ffA9FFguyaCFKgCHjpbeJmbvGDTaslP-qA8JAyDqotRoCawcQAvD_BwE&gclsrc=aw.ds"),
    modeldata(name: "Dish TV",image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZGrBFC7OAvHka8lKKAU8ae8GsBY3oDMQAOA&usqp=CAU",link: "https://www.dishtv.in/"),

  ];

  modeldata? datapicker;

}