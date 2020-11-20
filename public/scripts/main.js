var d   = new Date();
var yy  = d.getFullYear(),
    mm  = d.getMonth()+1,
    dd  = d.getDate(),
    hh  = d.getHours(),
    mn  = d.getMinutes();

var today = yy +''+ mm +''+ dd +''+ hh +''+ mn;

var Today= dd +"/" + mm + "/" + yy;



var date_diff_indays = function(date1, date2) {
    dt1 = new Date(date1);
    dt2 = new Date(date2);
    var hello = Math.floor((Date.UTC(dt2.getFullYear(), dt2.getMonth(), dt2.getDate()) - Date.UTC(dt1.getFullYear(), dt1.getMonth(), dt1.getDate()) ) /(1000 * 60 * 60 * 24));
};

document.getElementsByClassName("curdate")[0].innerHTML =  today;

document.getElementsByClassName("Curdate")[0].innerHTML = Today;

module.exports = date_diff_indays;

