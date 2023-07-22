function doLike(pid, uid) {
    console.log(pid + " " + uid)
    const d = {
        uid: uid,
        pid: pid,
        operation: 'like'
    }
    $.ajax({

        url: "LikeServlet",
        data: d,
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            if (data.trim() == 'true') {
                let c = $(".like-counter").html();
                c++;
                
                //$('.like-counter').html(10);

                // Convert the new like count to a string with a space in front
                const newLikeCount = c.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1 ');

                // Update the like count in the HTML with the new value
                $('.like-counter').html(" "+newLikeCount);

            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(data);
        }
    })
}


