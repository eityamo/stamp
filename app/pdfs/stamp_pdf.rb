class StampPdf < Prawn::Document
  # userにモデルなどのデータを渡します
  def initialize(user)

    # superで初期設定を指定
    super(page_size: 'A4') # 新規PDF作成
    # stroke_axis # 座標を表示
    font "app/assets/fonts/SourceHanSans-Bold.ttc"
    text user.name
  end
end
