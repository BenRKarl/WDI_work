class MonkeysController < ApplicationController

monkeys GET    /monkeys(.:format)     monkeys#index
        POST   /monkeys(.:format)     monkeys#create
 monkey GET    /monkeys/:id(.:format) monkeys#show
        PATCH  /monkeys/:id(.:format) monkeys#update
        PUT    /monkeys/:id(.:format) monkeys#update
        DELETE /monkeys/:id(.:format) monkeys#destroy

  def index
    @monkeys = Monkey.all
  end

  def show
    @monkey = Monkey(monkey_params)
  end

  def update
    @monkey - monkey.update(monkey_params)
  end

  def create
    monkey = Moneky.create(monkey_params)
    render json: monkey: to
  end

  def destroy
    monkey = Monkey.destroy(monkey_params)

  private

  def monkey_params
    params.require(:monkey).permit(:name)
  end

end
