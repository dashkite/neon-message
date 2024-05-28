import Registry from "@dashkite/helium"

Message =

  show: do ({ messages } = {}) ->
    ( event ) ->
      messages ?= await Registry.get "messages"
      if event.detail?
        messages.queue.enqueue event.detail

export default Message