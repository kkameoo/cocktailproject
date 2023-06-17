
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>추천에 따른 옵션 선택하기</title>
  <link rel="stylesheet" type="text/css" href="./css/generalrecommendother.css">
</head>

<div class="btnhome" onclick="location='/start.jsp'">
  <button class="btn_home">HOME</button>
</div>
<div class="btnbackspace" onclick="history.back()">
  <button class="btn_backspace">BACK</button>
</div>

<form method="post">
<div class="main">
  <h1>WEATHER</h1>
  <ul>
    <li>
      <input type="radio" name="chu" value="sunny" id="btn_sunny">
      <label for="btn_sunny">Sunny</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="cloudy" id="btn_cloudy" >
      <label for="btn_cloudy">Cloudy</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="rainy" id="btn_rainy" >
      <label for="btn_rainy">Rainy</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="snowy" id="btn_snowy" >
      <label for="btn_snowy">Snowy</label>
      <div class="custom_checkbox"></div>
    </li>
  </ul>
  <!-- popup message -->
  <input type="checkbox" id="btn_weather">
  <label for="btn_weather" id="weather_btn">Check</label>


  <div class="complete_screen">
    <div class="choose_weather">choose weather</div>
    <label for="btn_weather">next</label>
  </div>
</div>


<div class="main2">
  <h1>FEEL</h1>
  <ul>
    <li>
      <input type="radio" name="chu" value="happy" id="btn_happy">
      <label for="btn_happy">Happy</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="angry" id="btn_angry" >
      <label for="btn_angry">Angry</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="lonely" id="btn_lonely" >
      <label for="btn_lonely">Lonely</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="sad" id="btn_sad" >
      <label for="btn_sad">Sad</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="romantic" id="btn_romentic" >
      <label for="btn_romentic">Romantic</label>
      <div class="custom_checkbox"></div>
    </li>
  </ul>

  <!-- popup message -->
  <input type="checkbox" id="button2">
  <label for="button2" id="feel_btn">Check</label>

  <div class="feel_screen">
    <div class="choose_feel">choose feel</div>
    <label for="button2">next</label>
  </div>

</div>

<div class="main3">
  <h1>MBTI-E</h1>
  <ul>
    <li>
      <input type="radio" name="chu" value="entj" id="btn_entj">
      <label for="btn_entj">ENTJ</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="entp" id="btn_entp" >
      <label for="btn_entp">ENTP</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="enfj" id="btn_enfj" >
      <label for="btn_enfj">ENFJ</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="enfp" id="btn_enfp" >
      <label for="btn_enfp">ENFP</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="estj" id="btn_estj" >
      <label for="btn_estj">ESTJ</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="esfj" id="btn_esfj" >
      <label for="btn_esfj">ESFJ</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="estp" id="btn_estp" >
      <label for="btn_estp">ESTP</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="esfp" id="btn_esfp" >
      <label for="btn_esfp">ESFP</label>
      <div class="custom_checkbox"></div>
    </li>
  </ul>

  <!-- popup message -->
  <input type="checkbox" id="button3">
  <label for="button3" id="mbti_btn">Check</label>

  <div class="mbti_screen">
    <div class="choose_mbti">choose mbti</div>
    <label for="button3">next</label>
  </div>

</div>

<div class="main4">
  <h1>MBTI-I</h1>
  <ul>
    <li>
      <input type="radio" name="chu" value="intj" id="btn_intj">
      <label for="btn_intj">INTJ</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="intp" id="btn_intp" >
      <label for="btn_intp">INTP</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="infj" id="btn_infj" >
      <label for="btn_infj">INFJ</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="infp" id="btn_infp" >
      <label for="btn_infp">INFP</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="istj" id="btn_istj" >
      <label for="btn_istj">ISTJ</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="isfj" id="btn_isfj" >
      <label for="btn_isfj">ISFJ</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="istp" id="btn_istp" >
      <label for="btn_istp">ISTP</label>
      <div class="custom_checkbox"></div>
    </li>
    <li>
      <input type="radio" name="chu" value="isfp" id="btn_isfp" >
      <label for="btn_isfp">ISFP</label>
      <div class="custom_checkbox"></div>
    </li>
  </ul>

  <!-- popup message -->
  <input type="checkbox" id="button4">
  <label for="button4" id="mbti2_btn">Check</label>

  <div class="mbti2_screen">
    <div class="choose_mbti">choose mbti</div>
    <label for="button4">next</label>
  </div>
</div>

<div class="result">
  <button class="btn_result">Reuslt</button>
</div>
</form>

</body>
</html>