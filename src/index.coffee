import Registry from "@dashkite/helium"

Message =

  show: do ({ messages } = {}) ->
    ( event ) ->
      messages ?= await Registry.get "messages"
      if event.detail?
        messages.queue.enqueue
          content: event.detail.message
          type: "failure"

export default Message