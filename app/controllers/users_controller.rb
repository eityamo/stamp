class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.valid?
      stamp_pdf = StampPdf.new(user).render
      send_data stamp_pdf,
        filename: 'stamp_pdf.pdf',
        type: 'application/pdf',
        disposition: 'inline' #PDFをブラウザ上に出力　外すとダウンロード
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
