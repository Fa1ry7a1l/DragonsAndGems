import consumer from "./consumer"

const currentUserId = document.getElementById("player_id").value

function appendIncomingMessage(element, message) {
    element.innerHTML += (`<div class="message-line-incoming">
      <div class="incoming">
        <div>` +
        message.body +
        `</div>
    <div class="text-time">` +
        message.created_at +
        `</div>
        </div>
    </div>`);
    element.scrollTo(0, document.body.scrollHeight);
}

function appendOutgoingMessage(element, message) {
    element.innerHTML += (`<div class="message-line-outcoming">
      <div class = "outcoming">
        <div>` +
        message.body +
        `</div>
    <div class="text-time">` +
        message.created_at +
        `</div>
        </div>
    </div>`);
    element.scrollTo(0, document.body.scrollHeight);
}

consumer.subscriptions.create({channel: "ChatChannel", room: window.location.href.split('\/')[4]}, {
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
        if (data.owner == currentUserId)
            appendOutgoingMessage(document.getElementById('chat-box'), data);
        else
            appendIncomingMessage(document.getElementById('chat-box'), data);

    }
});