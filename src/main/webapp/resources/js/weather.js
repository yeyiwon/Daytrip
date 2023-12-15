// const API_KEY = '4b01eb3b54a42b16d8034185d2360018';
//
// // navigator.geolocation.getCurrentPosition(function(position) {
// //     console.log(position);
// //     var latitude = position.coords.latitude;
// //     var longitude = position.coords.longitude;
// //     alert("현재 위치는 : " + latitude + ", "+ longitude);
// // });
//
// const callbackOk= (position) =>{
//     const lat = position.coords.latitude //위도
//     const lon = position.coords.longitude //경도
//     const url =  `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}`
//     console.log(url)
// }