$(function () {
    $("#buttonDeleteManyModel").hide();

    $(".js-check-all").on("click", function () {
        if ($(this).prop("checked")) {
            $('th input[type="checkbox"]').each(function () {
                $(this).prop("checked", true);
                $(this).closest("tr").addClass("active");
            });
        } else {
            $('th input[type="checkbox"]').each(function () {
                $(this).prop("checked", false);
                $(this).closest("tr").removeClass("active");
            });
        }
    });

    $('tr[scope="row"] input[type="checkbox"]').on("click", function () {
        if ($(this).closest("tr").hasClass("active")) {
            $(this).closest("tr").removeClass("active");
        } else {
            $(this).closest("tr").addClass("active");
        }
    });

    $(".control--checkbox input[type=checkbox]").change(function (event) {
        const deleteRecords = $(
            ".table-content tr .control--checkbox input[type=checkbox]:checked"
        );

        const deleteRecordsLength = deleteRecords.length;

        console.log({ deleteRecordsLength });

        if (deleteRecordsLength >= 1) {
            $("#buttonDeleteManyModel").show();
            $("#buttonDeleteManyModel").text(
                `Xoá đánh dấu (${deleteRecordsLength})`
            );

            $("#buttonDeleteMany").text(
                `Xoá đánh dấu (${deleteRecordsLength})`
            );
        } else {
            $("#buttonDeleteManyModel").hide();
        }
    });
});
