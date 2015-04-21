# Description:
#   Rick got tha drapes on lock
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <botname> drape - [random rick owens image]
#   <botname> rick bomb - [random rick owens images]
#
# Author:
#   lilsmooty


do -> Array::shuffle ?= ->
  for i in [@length-1..1]
    j = Math.floor Math.random() * (i + 1)
    [@[i], @[j]] = [@[j], @[i]]
  @

module.exports = (robot) ->

  drapes = [
    "http://s3-us-west-2.amazonaws.com/hypebeast-wordpress/image/2013/12/rick-owens-launches-miami-store-and-e-commerce-0.jpg"
    "https://metrouk2.files.wordpress.com/2015/01/rick-owens-final-e1422002116710.jpg"
    "http://fashionone.s3.amazonaws.com/images/Rick-Owens.jpg"
    "http://www.railso.com/sites/default/files/Rick-Owens_railso.jpg"
    "http://www.jonathanpease.com.au/wp-content/uploads/2010/04/RickOwens_05.jpg"
    "http://idolizeyourkillers.com/wp/2010/05/rick-owens-on-nowness-4.jpg"
    "http://www.trbimg.com/img-54c19896/turbine/la-ar-rick-owens-nudity-20150122"
    "http://media4.popsugar-assets.com/files/ons/191/1913634/04_2009/84420196_10.xxxlarge/i/Paris-Rick-Owens-Men-Fall-2009.jpg"
    "http://www.selectism.com/news/wp-content/uploads/2010/06/rick-owens-spring-2011-selectism-0.jpg"
    "http://img1.nymag.com/imgs/fashion/daily/2015/03/05/05-rick-owens-face-01.w529.h352.2x.jpg"
    "http://ris.fashion.telegraph.co.uk/RichImageService.svc/imagecontent/1/TMG8360249/m/2_afp_1839902a.jpg"
    "http://media.nowfashion.com/uploads/shows/rick-owens/2012/paris/fall-winter/menswear/2012-01-19/1115/public/3861//photos/2012-01-19-14-07-40-rick-owens-7725.jpg"
    "https://totokaelo.com/uploads/images/0000/0031/3673/blog_rick_owens.jpg"
    "http://showstudio.com/img/galleries/1-200/106_960n.jpg?1346260415"
    "http://s3.amazonaws.com/nk_wp_media/uploads/2013/06/adidas-rick-owens-spring-2014-01.jpg"
    "http://files.harrispublications.com/wp-content/uploads/sites/2/2014/07/Adidas-rick-owens-runner-aw14-black-white-708x539.jpg"
  ]


  robot.respond /drape$/i, (msg) ->
    msg.send msg.random drapes


  robot.respond /rick bomb\s*x?(\d+)?/i, (msg) ->
    num = (Number) (msg.match[1] || 3)
    num = 3  if num < 3
    num = 10 if num > 10
    for img in drapes.shuffle()[0...num]
      msg.send img