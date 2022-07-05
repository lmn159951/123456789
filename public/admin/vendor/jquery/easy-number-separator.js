$(document).ready(function () {
    // Currency Separator
    var commaCounter = 10;

    function numberSeparator(Number, separator = ",") {
        Number += "";

        for (var i = 0; i < commaCounter; i++) {
            Number = Number.replace(separator, "");
        }

        x = Number.split(separator);
        y = x[0];
        z = x.length > 1 ? separator + x[1] : "";
        var rgx = /(\d+)(\d{3})/;

        while (rgx.test(y)) {
            y = y.replace(rgx, "$1" + separator + "$2");
        }
        commaCounter++;
        return y + z;
    }

    // Set Currency Separator to input fields
    $(document).on("keypress , paste", ".number-separator", function (e) {
        if (/^-?\d*[,.]?(\d{0,3},)*(\d{3},)?\d{0,3}$/.test(e.key)) {
            $(".number-separator").on("input", function () {
                e.target.value = numberSeparator(e.target.value);
            });
        } else {
            e.preventDefault();
            return false;
        }
    });

    

});
