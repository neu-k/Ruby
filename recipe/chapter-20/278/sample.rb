require "net/http"
require "nokogiri"

download_dir = "images"
Dir.mkdir(download_dir) unless Dir.exist?(download_dir)

Dir.chdir(download_dir) do
  url = URI.parse("https://www.cvltecult.com/")
  doc = Nokogiri::HTML(Net::HTTP.get(url))

  doc.css(".p-bio_item__img img").each do |element|
    begin
      image_url = URI.parse(element.attr("src"))

      unless image_url.absolute?
        image_url = url + image_url
      end

      puts "ダウンロード中: #{image_url}"
      image = Net::HTTP.get(image_url)
    rescue => e
      puts "ダウンロードに失敗しました: #{e.massage}"
      next
    end

    filename = File.basename(image_url.path)
    File.binwrite(filename, image)
    puts "保存完了: #{filename}"
  end
end
