// Turbolinksを使用していない場合
// window.onload = function() {
//   document.querySelectorAll('td').forEach(function(td) {
//     td.addEventListener('mouseover', function(e) {
//       e.currentTarget.style.backgroundColor = '#eff';
//     });

//     td.addEventListener('mouseout', function(e) {
//       e.currentTarget.style.backgroundColor = '';
//     });
//   });
// }

// Turbolinksを使用している場合
document.addEventListener('turbolinks:load', function() {
  document.querySelectorAll('.back-color').forEach(function(tr) {
    tr.addEventListener('mouseover', function(e) {
      e.currentTarget.style.backgroundColor = '#eff';
    });

    tr.addEventListener('mouseout', function(e) {
      e.currentTarget.style.backgroundColor = '';
    });
  });
});


// タスク削除
// document.addEventListener('turbolinks:load', function() {
//   document.querySelectorAll('.delete').forEach(function(a) {
//     a.addEventListener('ajax:success', function() {
//       let td = a.parentNode;
//       let tr = td.parentNode;
//       tr.style.display = 'none';
//     });
//   });;
// })
