<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="data.DBBean2"%>
<%@ page import="data.DataBean2"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<meta charset="utf-8">

<!-- Load d3.js and the geo projection plugin -->
<script src="https://d3js.org/d3.v4.js"></script>
<script src="https://d3js.org/d3-geo-projection.v2.min.js"></script>
<script src="https://d3js.org/d3-scale-chromatic.v1.min.js"></script>

<!-- Create an element where the map will take place -->
<svg id="my_Treat_IP" width="1800" height="1040"></svg>

<script>
// dataset : ip  

<%List<DataBean2> dataList = null;
DBBean2 dataProcess = DBBean2.getInstance();
dataList = dataProcess.getDatasMap();%>

<%System.out.println("var csvString = `cName,cCode,homelat,homelon,homecontinent,n");
out.println("var csvString = `cName,cCode,homelat,homelon,homecontinent,n");
//System.out.println("미국,US,38.9,-77.1,North America,51");
//out.println("미국,US,38.9,-77.1,North America,51");

	for (int i = 0; i < dataList.size(); i++) {
		DataBean2 data = dataList.get(i);
		System.out.println(
				data.getHomelat() + "," + data.getHomelon() + "," + data.getHomecontinent() + "," + data.getN());
		out.println(data.getHomelat() + "," + data.getHomelon() + "," + data.getHomecontinent() + "," + data.getN());
	}
	System.out.println("`;");
	out.println("`;");%>
/*
var csvString = `cName,cCode,homelat,homelon,homecontinent,n
가나,GH,5.6,-0.2,Africa,0
가봉,GA,0.5,9.4,Africa,0
가이아나,GY,10.5,-66.9,South America,0
감비아,GM,14.7,-17.5,Africa,0
과테말라,GT,14.6,-90.5,North America,0
그레나다,GD,10.7,-61.5,North America,0
그리스,GR,38.0,23.8,Europe,0
기니,GN,14.7,-17.5,Africa,0
기니비사우,GW,14.7,-17.5,Africa,0
나미비아,NA,-8.9,13.2,Africa,0
나우루,NR,-18.1,178.4,Oceania,0
나이지리아,NG,9.1,7.5,Africa,0
남수단,SS,0.3,32.6,Africa,0
남아프리카공화국,ZA,-25.8,28.2,Africa,0
네덜란드,NL,52.1,4.3,Europe,5
네팔,NP,27.7,85.3,Asia,0
노르웨이,NO,59.9,10.7,Europe,0
뉴질랜드,NZ,-41.3,174.8,Oceania,0
니우에,NU,-41.3,174.8,Oceania,0
니제르,NE,5.3,-4.0,Africa,0
니카라과,NI,12.1,-86.3,North America,0
덴마크,DK,55.7,12.6,Europe,2
도미니카공화국,DO,18.5,-70.0,North America,0
도미니카연방,DM,18.5,-70.0,North America,0
독일,DE,52.5,13.3,Europe,12
동티모르,TL,-8.5,125.6,Asia,0
라오스,LA,18.0,102.6,Asia,0
라이베리아,LR,9.1,7.5,Africa,0
라트비아,LV,57.0,24.1,Europe,1
러시아,RU,55.7,37.6,Europe,5
레바논,LB,33.8,35.5,Asia,0
레소토,LS,-25.8,28.2,Africa,0
루마니아,RO,44.5,26.1,Europe,2
룩셈부르크,LU,50.8,4.4,Europe,0
르완다,RW,-1.9,30.1,Africa,0
리비아,LY,32.9,13.1,Africa,0
리투아니아,LT,52.2,21.0,Europe,0
리히텐슈타인,LI,46.9,7.5,Europe,0
마다가스카르,MG,-18.9,47.5,Africa,0
마셜제도,MH,-18.1,178.4,Oceania,0
마이크로네시아연방,FM,-18.1,178.4,Oceania,0
말라위,MW,-17.8,31.1,Africa,0
말레이시아,MY,3.2,101.7,Asia,0
말리,ML,14.7,-17.5,Africa,0
멕시코,MX,19.4,-99.2,North America,0
모나코,MC,48.9,2.3,Europe,0
모로코,MA,34.0,-6.8,Africa,1
모리셔스,MU,-18.9,47.5,Africa,0
모리타니아,MR,34.0,-6.8,Africa,0
모잠비크,MZ,-26.0,32.6,Africa,0
몬테네그로,ME,44.8,20.5,Europe,0
몰도바,MD,50.5,30.5,Europe,0
몰디브,MV,6.9,79.8,Asia,0
몰타,MT,41.9,12.5,Europe,0
몽골,MN,47.9,106.9,Asia,0
미국,US,38.9,-77.1,North America,51
미얀마,MM,16.8,96.1,Asia,0
바누아투,VU,-9.5,147.2,Oceania,0
바레인,BH,26.2,50.6,Asia,0
바베이도스,BB,10.7,-61.5,North America,0
바하마,BS,18.5,-70.0,North America,0
방글라데시,BD,23.8,90.4,Asia,0
베냉,BJ,5.6,-0.2,Africa,0
베네수엘라,VE,10.5,-66.9,South America,2
베트남,VN,21.1,105.8,Asia,1
벨기에,BE,50.8,4.4,Europe,0
벨라루스,BY,53.9,27.6,Europe,1
벨리즈,BZ,13.7,-89.2,North America,0
보스니아헤르체고비나,BA,45.8,16.0,Europe,1
보츠와나,BW,-25.8,28.2,Africa,0
볼리비아,BO,-16.5,-68.1,South America,0
부룬디,BI,-1.9,30.1,Africa,0
부르키나파소,BF,5.3,-4.0,Africa,0
부탄,BT,23.8,90.4,Asia,0
북마케도니아,MK,42.7,23.4,Europe,0
불가리아,BG,42.7,23.4,Europe,1
브라질,BR,-15.8,-47.8,South America,0
브루나이,BN,4.9,115.0,Asia,0
사모아,WS,-41.3,174.8,Oceania,0
사우디아라비아,SA,24.7,46.6,Asia,1
사이프러스,CY,38.0,23.8,Europe,0
산마리노,SM,41.9,12.5,Europe,0
상투메프린시페,ST,0.5,9.4,Africa,0
세네갈,SN,14.7,-17.5,Africa,0
세르비아,RS,44.8,20.5,Europe,0
세이셸,SC,9.1,38.7,Africa,0
세인트 루시아,LC,10.7,-61.5,North America,0
세인트 빈센트 그레나딘,VC,10.7,-61.5,North America,0
세인트 키츠 네비스,KN,18.5,-70.0,North America,0
소말리아,SO,-1.3,36.8,Africa,0
솔로몬제도,SB,-9.5,147.2,Oceania,0
수단,SD,15.5,32.6,Africa,0
수리남,SR,10.5,-66.9,South America,0
스리랑카,LK,6.9,79.8,Asia,0
스웨덴,SE,59.3,18.1,Europe,3
스위스,CH,46.9,7.5,Europe,0
스페인,ES,40.5,-3.7,Europe,3
슬로바키아,SK,48.1,17.1,Europe,0
슬로베니아,SI,48.2,16.3,Europe,2
시리아,SY,33.8,35.5,Asia,0
시에라리온,SL,9.1,7.5,Africa,0
싱가포르,SG,1.3,103.8,Asia,0
아랍에미리트,AE,24.4,54.4,Asia,2
아르메니아,AM,55.7,37.6,Europe,0
아르헨티나,AR,-34.6,-58.4,South America,1
아이슬란드,IS,59.9,10.7,Europe,1
아이티,HT,18.5,-70.0,North America,0
아일랜드,IE,53.3,-6.2,Europe,0
아제르바이잔,AZ,49.8,40.4,Asia,1
아프가니스탄,AF,34.5,69.2,Asia,0
안도라,AD,40.5,-3.7,Europe,0
알바니아,AL,38.0,23.8,Europe,0
알제리,DZ,36.8,3.0,Africa,0
앙골라,AO,-8.9,13.2,Africa,0
앤티가바부다,AG,18.5,-70.0,North America,0
에리트레아,ER,15.5,32.6,Africa,0
에스와티니,SZ,-25.8,28.2,Africa,0
에스토니아,EE,60.2,24.9,Europe,0
에콰도르,EC,-0.2,-78.5,South America,0
에티오피아,ET,9.1,38.7,Africa,0
엘살바도르,SV,13.7,-89.2,North America,0
영국,GB,51.5,-0.1,Europe,6
예멘,YE,15.3,44.2,Asia,0
오만,OM,23.6,58.4,Asia,0
오스트리아,AT,48.2,16.3,Europe,0
온두라스,HN,14.1,-87.2,North America,0
요르단,JO,32.0,35.9,Asia,0
우간다,UG,0.3,32.6,Africa,0
우루과이,UY,-34.9,-56.1,South America,0
우즈베키스탄,UZ,41.3,69.3,Asia,0
우크라이나,UA,50.5,30.5,Europe,1
이라크,IQ,33.3,44.4,Asia,0
이란,IR,35.8,51.4,Asia,1
이스라엘,IL,32.2,34.8,Asia,0
이집트,EG,30.0,31.2,Africa,0
이탈리아,IT,41.9,12.5,Europe,2
인도,IN,28.6,77.2,Asia,1
인도네시아,ID,-6.2,106.8,Asia,0
일본,JP,35.7,139.7,Asia,3
자메이카,JM,18.1,-76.8,North America,0
잠비아,ZM,-17.8,31.1,Africa,0
적도기니,GQ,3.8,8.7,Africa,0
조지아,GE,41.7,44.8,Asia,0
중국,CN,39.6,116.3,Asia,5
중앙아프리카공화국,CF,3.9,11.5,Africa,0
지부티,DJ,9.1,38.7,Africa,0
짐바브웨,ZW,-17.8,31.1,Africa,0
차드,TD,3.9,11.5,Africa,0
체코,CZ,50.1,14.4,Europe,2
칠레,CL,-33.4,-70.6,South America,0
카메룬,CM,3.9,11.5,Africa,0
카보베르데,CV,14.7,-17.5,Africa,0
카자흐스탄,KZ,51.1,71.5,Asia,0
카타르,QA,25.3,51.5,Asia,0
캄보디아,KH,11.5,104.9,Asia,0
캐나다,CA,45.4,-75.7,North America,5
케냐,KE,-1.3,36.8,Africa,1
코모로,KM,-18.9,47.5,Africa,0
코소보,XK,48.2,16.3,Europe,0
코스타리카,CR,9.9,-84.1,North America,0
코트디부아르,CI,5.3,-4.0,Africa,0
콜롬비아,CO,4.7,-74.0,South America,3
콩고공화국,CG,-4.3,15.3,Africa,0
콩고민주공화국(DR콩고),CD,-4.3,15.3,Africa,0
쿠바,CU,19.4,-99.2,North America,0
쿠웨이트,KW,29.3,48.1,Asia,0
쿡제도,CK,-41.3,174.8,Oceania,0
크로아티아,HR,45.8,16.0,Europe,1
키르기즈,KG,42.8,74.6,Asia,0
키리바시,KI,-18.1,178.4,Oceania,0
타지키스탄,TJ,38.6,68.8,Asia,0
탄자니아,TZ,-6.8,39.3,Africa,0
태국,TH,13.8,100.6,Asia,0
터키,TR,39.9,32.9,Europe,0
토고,TG,5.6,-0.2,Africa,0
통가,TO,-41.3,174.8,Oceania,0
투르크메니스탄,TM,37.9,58.4,Asia,0
투발루,TV,-18.1,178.4,Oceania,0
튀니지,TN,36.8,10.2,Africa,0
트리니다드토바고,TT,10.7,-61.5,North America,0
파나마,PA,9.0,-79.5,North America,0
파라과이,PY,-25.3,-57.6,South America,0
파키스탄,PK,33.7,73.1,Asia,0
파푸아뉴기니,PG,-9.5,147.2,Oceania,0
팔라우,PW,14.5,121.1,Oceania,0
페루,PE,-12.1,-77.0,South America,0
포르투갈,PT,38.7,-9.1,Europe,1
폴란드,PL,52.2,21.0,Europe,5
프랑스,FR,48.9,2.3,Europe,9
피지,FJ,-18.1,178.4,Oceania,0
핀란드,FI,60.2,24.9,Europe,0
필리핀,PH,14.5,121.1,Asia,0
헝가리,HU,47.5,19.1,Europe,1
호주,AU,-35.3,149.1,Oceania,1
`;  
*/

// The svg
var svg = d3.select("svg"),
    width = +svg.attr("width"),
    height = +svg.attr("height");

// Map and projection
var projection = d3.geoMercator()
    .center([0,20])                // GPS of location to zoom on
    .scale(150)                       // This is like the zoom
    .translate([ width/2, height/2 ])

d3.queue()
  .defer(d3.json, "https://raw.githubusercontent.com/holtzy/D3-graph-gallery/master/DATA/world.geojson")  // World shape
  //.defer(d3.csv, "https://raw.githubusercontent.com/holtzy/D3-graph-gallery/master/DATA/data_gpsLocSurfer.csv") // Position of circles
  //.defer(d3.csv, "https://kr3325003.github.io/data_gpsLocSurfer.html") // Position of circles
  //.defer(d3.csv, "data_gpsLocSurfer.csv") // Position of circles
  //.defer(d3.csv, "data_gpsLocSurfer3.csv") // Position of circles
  //.defer(d3.csv, dataset) // Position of circles
  //.defer(d3.csv, csvString) // Position of circles

  .defer(function(callback) {
	  <%--System.out.println("var csvString = `cName,cCode,homelat,homelon,homecontinent,n");
	  out.println("var csvString = `cName,cCode,homelat,homelon,homecontinent,n");
	  //System.out.println("미국,US,38.9,-77.1,North America,51");
	  //out.println("미국,US,38.9,-77.1,North America,51");

	  	for (int i = 0; i < dataList.size(); i++) {
	  		DataBean2 data = dataList.get(i);
	  		System.out.println(
	  				data.getHomelat() + "," + data.getHomelon() + "," + data.getHomecontinent() + "," + data.getN());
	  		out.println(data.getHomelat() + "," + data.getHomelon() + "," + data.getHomecontinent() + "," + data.getN());
	  	}
	  	System.out.println("`;");
	  	out.println("`;");--%>
  
	  
	  
    /*
    var csvString = `cName,cCode,homelat,homelon,homecontinent,n
가나,GH,5.6,-0.2,Africa,0
가봉,GA,0.5,9.4,Africa,0
가이아나,GY,10.5,-66.9,South America,0
감비아,GM,14.7,-17.5,Africa,0
과테말라,GT,14.6,-90.5,North America,0
그레나다,GD,10.7,-61.5,North America,0
그리스,GR,38.0,23.8,Europe,0
기니,GN,14.7,-17.5,Africa,0
기니비사우,GW,14.7,-17.5,Africa,0
나미비아,NA,-8.9,13.2,Africa,0
나우루,NR,-18.1,178.4,Oceania,0
나이지리아,NG,9.1,7.5,Africa,0
남수단,SS,0.3,32.6,Africa,0
남아프리카공화국,ZA,-25.8,28.2,Africa,0
네덜란드,NL,52.1,4.3,Europe,5
네팔,NP,27.7,85.3,Asia,0
노르웨이,NO,59.9,10.7,Europe,0
뉴질랜드,NZ,-41.3,174.8,Oceania,0
니우에,NU,-41.3,174.8,Oceania,0
니제르,NE,5.3,-4.0,Africa,0
니카라과,NI,12.1,-86.3,North America,0
덴마크,DK,55.7,12.6,Europe,2
도미니카공화국,DO,18.5,-70.0,North America,0
도미니카연방,DM,18.5,-70.0,North America,0
독일,DE,52.5,13.3,Europe,12
동티모르,TL,-8.5,125.6,Asia,0
라오스,LA,18.0,102.6,Asia,0
라이베리아,LR,9.1,7.5,Africa,0
라트비아,LV,57.0,24.1,Europe,1
러시아,RU,55.7,37.6,Europe,5
레바논,LB,33.8,35.5,Asia,0
레소토,LS,-25.8,28.2,Africa,0
루마니아,RO,44.5,26.1,Europe,2
룩셈부르크,LU,50.8,4.4,Europe,0
르완다,RW,-1.9,30.1,Africa,0
리비아,LY,32.9,13.1,Africa,0
리투아니아,LT,52.2,21.0,Europe,0
리히텐슈타인,LI,46.9,7.5,Europe,0
마다가스카르,MG,-18.9,47.5,Africa,0
마셜제도,MH,-18.1,178.4,Oceania,0
마이크로네시아연방,FM,-18.1,178.4,Oceania,0
말라위,MW,-17.8,31.1,Africa,0
말레이시아,MY,3.2,101.7,Asia,0
말리,ML,14.7,-17.5,Africa,0
멕시코,MX,19.4,-99.2,North America,0
모나코,MC,48.9,2.3,Europe,0
모로코,MA,34.0,-6.8,Africa,1
모리셔스,MU,-18.9,47.5,Africa,0
모리타니아,MR,34.0,-6.8,Africa,0
모잠비크,MZ,-26.0,32.6,Africa,0
몬테네그로,ME,44.8,20.5,Europe,0
몰도바,MD,50.5,30.5,Europe,0
몰디브,MV,6.9,79.8,Asia,0
몰타,MT,41.9,12.5,Europe,0
몽골,MN,47.9,106.9,Asia,0
미국,US,38.9,-77.1,North America,51
미얀마,MM,16.8,96.1,Asia,0
바누아투,VU,-9.5,147.2,Oceania,0
바레인,BH,26.2,50.6,Asia,0
바베이도스,BB,10.7,-61.5,North America,0
바하마,BS,18.5,-70.0,North America,0
방글라데시,BD,23.8,90.4,Asia,0
베냉,BJ,5.6,-0.2,Africa,0
베네수엘라,VE,10.5,-66.9,South America,2
베트남,VN,21.1,105.8,Asia,1
벨기에,BE,50.8,4.4,Europe,0
벨라루스,BY,53.9,27.6,Europe,1
벨리즈,BZ,13.7,-89.2,North America,0
보스니아헤르체고비나,BA,45.8,16.0,Europe,1
보츠와나,BW,-25.8,28.2,Africa,0
볼리비아,BO,-16.5,-68.1,South America,0
부룬디,BI,-1.9,30.1,Africa,0
부르키나파소,BF,5.3,-4.0,Africa,0
부탄,BT,23.8,90.4,Asia,0
북마케도니아,MK,42.7,23.4,Europe,0
불가리아,BG,42.7,23.4,Europe,1
브라질,BR,-15.8,-47.8,South America,0
브루나이,BN,4.9,115.0,Asia,0
사모아,WS,-41.3,174.8,Oceania,0
사우디아라비아,SA,24.7,46.6,Asia,1
사이프러스,CY,38.0,23.8,Europe,0
산마리노,SM,41.9,12.5,Europe,0
상투메프린시페,ST,0.5,9.4,Africa,0
세네갈,SN,14.7,-17.5,Africa,0
세르비아,RS,44.8,20.5,Europe,0
세이셸,SC,9.1,38.7,Africa,0
세인트 루시아,LC,10.7,-61.5,North America,0
세인트 빈센트 그레나딘,VC,10.7,-61.5,North America,0
세인트 키츠 네비스,KN,18.5,-70.0,North America,0
소말리아,SO,-1.3,36.8,Africa,0
솔로몬제도,SB,-9.5,147.2,Oceania,0
수단,SD,15.5,32.6,Africa,0
수리남,SR,10.5,-66.9,South America,0
스리랑카,LK,6.9,79.8,Asia,0
스웨덴,SE,59.3,18.1,Europe,3
스위스,CH,46.9,7.5,Europe,0
스페인,ES,40.5,-3.7,Europe,3
슬로바키아,SK,48.1,17.1,Europe,0
슬로베니아,SI,48.2,16.3,Europe,2
시리아,SY,33.8,35.5,Asia,0
시에라리온,SL,9.1,7.5,Africa,0
싱가포르,SG,1.3,103.8,Asia,0
아랍에미리트,AE,24.4,54.4,Asia,2
아르메니아,AM,55.7,37.6,Europe,0
아르헨티나,AR,-34.6,-58.4,South America,1
아이슬란드,IS,59.9,10.7,Europe,1
아이티,HT,18.5,-70.0,North America,0
아일랜드,IE,53.3,-6.2,Europe,0
아제르바이잔,AZ,49.8,40.4,Asia,1
아프가니스탄,AF,34.5,69.2,Asia,0
안도라,AD,40.5,-3.7,Europe,0
알바니아,AL,38.0,23.8,Europe,0
알제리,DZ,36.8,3.0,Africa,0
앙골라,AO,-8.9,13.2,Africa,0
앤티가바부다,AG,18.5,-70.0,North America,0
에리트레아,ER,15.5,32.6,Africa,0
에스와티니,SZ,-25.8,28.2,Africa,0
에스토니아,EE,60.2,24.9,Europe,0
에콰도르,EC,-0.2,-78.5,South America,0
에티오피아,ET,9.1,38.7,Africa,0
엘살바도르,SV,13.7,-89.2,North America,0
영국,GB,51.5,-0.1,Europe,6
예멘,YE,15.3,44.2,Asia,0
오만,OM,23.6,58.4,Asia,0
오스트리아,AT,48.2,16.3,Europe,0
온두라스,HN,14.1,-87.2,North America,0
요르단,JO,32.0,35.9,Asia,0
우간다,UG,0.3,32.6,Africa,0
우루과이,UY,-34.9,-56.1,South America,0
우즈베키스탄,UZ,41.3,69.3,Asia,0
우크라이나,UA,50.5,30.5,Europe,1
이라크,IQ,33.3,44.4,Asia,0
이란,IR,35.8,51.4,Asia,1
이스라엘,IL,32.2,34.8,Asia,0
이집트,EG,30.0,31.2,Africa,0
이탈리아,IT,41.9,12.5,Europe,2
인도,IN,28.6,77.2,Asia,1
인도네시아,ID,-6.2,106.8,Asia,0
일본,JP,35.7,139.7,Asia,3
자메이카,JM,18.1,-76.8,North America,0
잠비아,ZM,-17.8,31.1,Africa,0
적도기니,GQ,3.8,8.7,Africa,0
조지아,GE,41.7,44.8,Asia,0
중국,CN,39.6,116.3,Asia,5
중앙아프리카공화국,CF,3.9,11.5,Africa,0
지부티,DJ,9.1,38.7,Africa,0
짐바브웨,ZW,-17.8,31.1,Africa,0
차드,TD,3.9,11.5,Africa,0
체코,CZ,50.1,14.4,Europe,2
칠레,CL,-33.4,-70.6,South America,0
카메룬,CM,3.9,11.5,Africa,0
카보베르데,CV,14.7,-17.5,Africa,0
카자흐스탄,KZ,51.1,71.5,Asia,0
카타르,QA,25.3,51.5,Asia,0
캄보디아,KH,11.5,104.9,Asia,0
캐나다,CA,45.4,-75.7,North America,5
케냐,KE,-1.3,36.8,Africa,1
코모로,KM,-18.9,47.5,Africa,0
코소보,XK,48.2,16.3,Europe,0
코스타리카,CR,9.9,-84.1,North America,0
코트디부아르,CI,5.3,-4.0,Africa,0
콜롬비아,CO,4.7,-74.0,South America,3
콩고공화국,CG,-4.3,15.3,Africa,0
콩고민주공화국(DR콩고),CD,-4.3,15.3,Africa,0
쿠바,CU,19.4,-99.2,North America,0
쿠웨이트,KW,29.3,48.1,Asia,0
쿡제도,CK,-41.3,174.8,Oceania,0
크로아티아,HR,45.8,16.0,Europe,1
키르기즈,KG,42.8,74.6,Asia,0
키리바시,KI,-18.1,178.4,Oceania,0
타지키스탄,TJ,38.6,68.8,Asia,0
탄자니아,TZ,-6.8,39.3,Africa,0
태국,TH,13.8,100.6,Asia,0
터키,TR,39.9,32.9,Europe,0
토고,TG,5.6,-0.2,Africa,0
통가,TO,-41.3,174.8,Oceania,0
투르크메니스탄,TM,37.9,58.4,Asia,0
투발루,TV,-18.1,178.4,Oceania,0
튀니지,TN,36.8,10.2,Africa,0
트리니다드토바고,TT,10.7,-61.5,North America,0
파나마,PA,9.0,-79.5,North America,0
파라과이,PY,-25.3,-57.6,South America,0
파키스탄,PK,33.7,73.1,Asia,0
파푸아뉴기니,PG,-9.5,147.2,Oceania,0
팔라우,PW,14.5,121.1,Oceania,0
페루,PE,-12.1,-77.0,South America,0
포르투갈,PT,38.7,-9.1,Europe,1
폴란드,PL,52.2,21.0,Europe,5
프랑스,FR,48.9,2.3,Europe,9
피지,FJ,-18.1,178.4,Oceania,0
핀란드,FI,60.2,24.9,Europe,0
필리핀,PH,14.5,121.1,Asia,0
헝가리,HU,47.5,19.1,Europe,1
호주,AU,-35.3,149.1,Oceania,1
`;  
*/

    // Parse the CSV string into a format that D3 can work with
    var dataset = d3.csvParse(csvString);
    // Call the callback function with the parsed dataset
    callback(null, dataset);}) // Position of circles
    //.defer(dataset) // Position of circles
  .await(ready);

function ready(error, dataGeo, data) {

  // Create a color scale
  var allContinent = d3.map(data, function(d){return(d.homecontinent)}).keys()
  var color = d3.scaleOrdinal()
    .domain(allContinent)
    .range(d3.schemePaired);

  // Add a scale for bubble size
  var valueExtent = d3.extent(data, function(d) { return +d.n; })
  var size = d3.scaleSqrt()
    .domain(valueExtent)  // What's in the data
    .range([ 1, 50])  // Size in pixel

  // Draw the map
  svg.append("g")
      .selectAll("path")
      .data(dataGeo.features)
      .enter()
      .append("path")
        .attr("fill", "#b8b8b8")
        .attr("d", d3.geoPath()
            .projection(projection)
        )
      .style("stroke", "none")
      .style("opacity", .3)

  // Add circles:
  svg
    .selectAll("myCircles")
    .data(data.sort(function(a,b) { return +b.n - +a.n }).filter(function(d,i){ return i<1000 }))
    .enter()
    .append("circle")
      .attr("cx", function(d){ return projection([+d.homelon, +d.homelat])[0] })
      .attr("cy", function(d){ return projection([+d.homelon, +d.homelat])[1] })
      .attr("r", function(d){ return size(+d.n) })
      .style("fill", function(d){ return color(d.homecontinent) })
      .attr("stroke", function(d){ if(d.n>2000){return "black"}else{return "none"}  })
      .attr("stroke-width", 1)
      .attr("fill-opacity", .4)



  // Add title and explanation
  svg
    .append("text")
      .attr("text-anchor", "end")
      .style("fill", "black")
      .attr("x", width - 10)
      .attr("y", height - 30)
      .attr("width", 90)
      .html("WHERE SURFERS LIVE")
      .style("font-size", 14)


  // --------------- //
  // ADD LEGEND //
  // --------------- //

  // Add legend: circles
  var valuesToShow = [100,4000,15000]
  var xCircle = 40
  var xLabel = 90
  svg
    .selectAll("legend")
    .data(valuesToShow)
    .enter()
    .append("circle")
      .attr("cx", xCircle)
      .attr("cy", function(d){ return height - size(d) } )
      .attr("r", function(d){ return size(d) })
      .style("fill", "none")
      .attr("stroke", "black")

  // Add legend: segments
  svg
    .selectAll("legend")
    .data(valuesToShow)
    .enter()
    .append("line")
      .attr('x1', function(d){ return xCircle + size(d) } )
      .attr('x2', xLabel)
      .attr('y1', function(d){ return height - size(d) } )
      .attr('y2', function(d){ return height - size(d) } )
      .attr('stroke', 'black')
      .style('stroke-dasharray', ('2,2'))

  // Add legend: labels
  svg
    .selectAll("legend")
    .data(valuesToShow)
    .enter()
    .append("text")
      .attr('x', xLabel)
      .attr('y', function(d){ return height - size(d) } )
      .text( function(d){ return d } )
      .style("font-size", 10)
      .attr('alignment-baseline', 'middle')
}

</script>