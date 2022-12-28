import './channels/chat_channel'

function getAuthToken() {
    return document.querySelector("[name='csrf-token']").content
}

function sendMessage(data) {

    fetch(window.location.href + '/message/',
        {
            method: "POST",
            headers: {
                "X-CSRF-Token": getAuthToken(),
                "Content-Type": "application/json"
            },
            body: JSON.stringify(data)
        }
    )
}

document.getElementById('message-form').onsubmit = function (e) {
    e.preventDefault();
    const message = document.getElementById('message_body').value
    if (message !== '') {
        document.getElementById('message_body').value = ""
        sendMessage({
            message: {
                body: message,
                room: window.location.href.split('\/')[4],
                owner: "0"
            },
            authenticity_token: getAuthToken()
        });
    }

    return false;
};