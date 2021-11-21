require "async"

# controller
class TestAsyncController < ApplicationController
  def index
    RequestStore.store = { name: "Brian" }
    @response = Async do
      if RequestStore.store[:name] == "Brian"
        "Congrats, RequestStore.store[:name] is 'Brian'."
      else
        "RequestStore.store[:name] should be 'Brian' but is '#{RequestStore.store[:name]}'"
      end
    end.wait
  end
end
