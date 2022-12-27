function getAuthToken() {
    console.log("Случилось чудо")
    return document.querySelector("[name='csrf-token']").content
}

function sendMessage(data) {
    let token = getAuthToken()
    console.log("Случилось чудо2")

    fetch(window.location.href+'/message/',
        {
        method: "POST",
            headers: {
                "X-CSRF-Token": getAuthToken(),
                "Content-Type": "application/json"
            },
        body: JSON.stringify(data)}
    ).then(response=>response.json())
        .then(data=>appendIncomingMessage(document.getElementById('chat-box'), data))
}

function appendIncomingMessage(element, message) {
    // Это не так работает
    // 
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
document.addEventListener('DOMContentLoaded',()=>{
    document.getElementById('message-form').onsubmit = function (e) {
        e.preventDefault();
        const message = document.getElementById('message_body').value
        if(message !== '')
        {
            document.getElementById('message_body').value = ""
           sendMessage({
               message: {
                   body: message
               },
               authenticity_token: getAuthToken()
           });
        }

        return false;
    };
})