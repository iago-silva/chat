App.messages = App.cable.subscriptions.create({
        channel: 'MessagesChannel',
        chatroom: location.pathname.split('/').reverse()[0]
    },
    {
        received: function (data) {
            $("#messages").removeClass('hidden')
            return $('#messages').append(this.renderMessage(data));
        },

        renderMessage: function (data) {
            return "<p> <b>" + data.user + ": </b>" + data.message + "</p>";
        },

        connected: function () {
            console.log('connected()');
        }
    });