class Image
  def initialize(image_array)
    @image_array = image_array
  end

  def output_image
    @image_array.each do |image_row|
      puts image_row.join
   end
  end

  def blur_image
    @image_array.each do |image_row|
    image_row.each do |image_cell|


end

