import consumer from "./consumer"

function appendMessage(element, message) {
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

consumer.subscriptions.create("ChatChannel", {
    connected() {
        console.log("подключились")
        // Called when the subscription is ready for use on the server
    },

    disconnected() {
        console.log("отключились")

        // Called when the subscription has been terminated by the server
    },

    received(data) {
        console.log("получили данные")

        appendMessage($('#chat-box'), data);
    }
});