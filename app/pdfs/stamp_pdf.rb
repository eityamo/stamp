class StampPdf < Prawn::Document
  # userにモデルなどのデータを渡します
  def initialize(user)
    # superで初期設定を指定 新規PDF作成
    super(page_size: 'A4')

    # 座標を表示
    stroke_axis
    # font指定
    font "app/assets/fonts/SourceHanSans-Bold.ttc"
    # box化
    create_title
    create_stamp(user)
  end

  # タイトル
  def create_title
    text_box "俺の印鑑", at: [0, 700], align: :center, size: 20
  end

  # 印鑑
  def create_stamp(user)
    bounding_box([235, 600], width: 50, height: 100) do
    #   # boxの描画
    #   # stroke_bounds
      # 図形の色
      stroke_color 'ce3337'
      # 円
      stroke_circle [25, 50], 50
    #   # テキストの色
    #   fill_color 'ce3337'
    #   # テキスト
    #   text_box "#{user.name}", at: [5, 90], size: 40
    end
  end
end
