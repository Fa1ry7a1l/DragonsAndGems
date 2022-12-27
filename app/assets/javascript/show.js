//= require jquery3
//= require jquery_ujs

function getAuthToken() {
    console.log("Случилось чудо")
    return $('meta[name=csrf-token]').attr('content');
}

function sendMessage(data) {
    let token = getAuthToken()
    console.log("Случилось чудо2")

    $.ajax({
        type: "POST",
        url: window.location.href+`/message/`
        ,
        data: {
            'body': data,
            'authenticity_token': token
        },
        dataType: "json",
        success: function (data) {
            console.log(data)
            console.log(data["body"])
            appendIncomingMessage($('#chat-box'), data)
        }
    })
}

function appendIncomingMessage(element, message) {
    element.append(`<div style="width: 100px">
        <div style="color: darkblue; border-radius: 3px">
            <div>`+
                message.body +
            `</div>
            <div style="text-decoration-color: #999999">`+
                message.created_at+
            `</div>
        </div>
    </div>`);
    window.scrollTo(0,document.body.scrollHeight);
}

$(document).ready(function () {
    $('#message-form').submit(function (e) {
        if(document.getElementById('message_body').value !== '')
        {
            const data = $('#message-form').serializeArray().reduce(function (obj, item) {
                obj[item.name] = item.value;
                return obj;
            }, {});
            document.getElementById('message_body').value = ""
            sendMessage(data)
        }
        e.preventDefault(e);
        return false;
    });
});