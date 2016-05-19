class MessagesController < ApplicationController
  def index
    @message = Message.new
    ##Messagesを全て取得する
    @messages = Message.all
  end
   
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path , notice: 'メッセージを保存しました'
    else
      @messages = Message.all
      flash.now[:alert] = 'メッセージの保存に失敗しました'
      render 'index'
    end
  end
  
  private
  def message_params
    params.require(:message).permit(:name,:body)
    ## ここまで
  end
  

end
