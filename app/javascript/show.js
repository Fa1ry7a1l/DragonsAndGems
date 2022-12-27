


function getAuthToken() {
    console.log("Случилось чудо")
    return document.head.querySelector('meta[name=csrf-token]').content;
}

function sendMessage(data) {
    let token = getAuthToken()
    console.log("Случилось чудо2")

    fetch(window.location.href + `/message/`, {
        method: "POST",
        redirect: 'follow',
        headers: {
            'Content-Type': 'application/json'
        },
        body: {
            'body': data,
            'authenticity_token': token
        },
        dataType: "json",
    }).then(data  =>  {
        console.log(data)
        console.log(data["body"])
        appendIncomingMessage(document.getElementById('chat-box'), data)
    }).catch((error) => {
        console.log(error)
    });
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

window.onload = function () {
    console.log("done")
    document.getElementById('message-form').addEventListener("submit", function (e) {
        e.preventDefault();

        if(document.getElementById('message_body').value !== '')
        {
            let data = {"token": document.getElementById('message_body').value}
            document.getElementById('message_body').value = ""
            sendMessage(data)
        }
        return false;
    });
};