class Image

  def initialize(image_array)
    @image_array = image_array
  end

  def output_image
    @image_array.each do |image_row|
      puts image_row.join
   end
  end

  def blur
    blur_image
  end

  def blur_image
    blur_image = Array.new
    @image_array.each_with_index do |image_row,rindex|
     image_row.each_with_index do |image_cell,cindex|
      if image_cell == 1
       blur_image << [rindex, cindex]
      end
     end
    end
     blur_image.each do |location|
      @image_array[location[0]][location[1] + 1] = 1 if location[1] + 1 <= @image_array[location[0]].length - 1 
      @image_array[location[0]][location[1] - 1] = 1 if location[1] - 1 >= 0
      @image_array[location[0] + 1][location[1]] = 1 if location[0] + 1 <= @image_array.length - 1
      @image_array[location[0] - 1][location[1]] = 1 if location[0] - 1 >= 0
     end

  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.blur
image.output_image

