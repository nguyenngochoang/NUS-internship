class Person
  attr_accessor:firstname
  attr_accessor:age
  attr_accessor:lastname

  def initialize(firstname,lastname,age)
    @firstname=firstname
    @lastname=lastname
    @age=age
  end

  def full_name
    puts "#{@firstname} #{@lastname}"
  end

  def first_name
    puts "#{@firstname}"
  end

  def age
    puts "#{@age}"
  end

end

xxx = Person.new("Hoang","Nguyen",21)
xxx.full_name
xxx.first_name
xxx.age





=begin Có 4 loại biến  :
  ## Biến toàn cục : Có thể truy cập sử dụng từ bất cứ đâu trong ruby program.
      ### Thời gian sống bằng với thời gian của program
      ### Nhược điểm : vì có thể truy cập từ bất cứ đâu nên ai cũng có thể thay đổi giá trị của nó => khó debug
      ### Ưu : có một số biến global được định nghĩa sẵn dùng để chứa thông tin. ví dụ : $_ để chứa thông tin từ phương thức gets

  ## Biến cục bộ : chỉ có thể truy cập sử dụng trong scope mà nó được khai báo. Khai báo biến cục bộ bằng chữ viết thường hoặc có thể bắt đầu bằng dấu "_".
      ### Thời gian sống bằng với thời gian sống của hàm khai báo nó.
      ### Nhược điểm : chỉ có thể truy cập sử dụng trong nội bộ scope khai báo nó.

  ## Biến instance : biến cục bộ đối với một object nào đó. Ví dụ : Class person như ở trên, xxx.age là 21 nhưng yyy.age có thể là 22 23 ... là một biến hoàn toàn khác với xxx.age.
      ###Ưu điểm : có lợi cho việc kế thừa, các object có thể lưu trữ thông tin của mình.

  ## BIến của class : khai báo @@var . Biến này dùng chung cho tất cả object của class đó.
      ### Ưu điểm: cung cấp thông tin dùng cho cho mọi object của class.
      ### Nhược: Bất cứ ai thuộc class cũng có quyền chỉnh sửa.

  =end


  =begin
    # Ruby có kế thừa, lớp con có thể override method của lớp cha
    # Ruby cho phép overloading operator nhưng không có overloading method.
    #Ruby không hỗ trợ đa kế thừa. Để giaỉ quyết chuyện này có thể dùng module.

    # Ví dụ :
      ##Class Son < Dad
      ## override method thì define lại method với cùng tên nhưng thay đổi nội dung của method đó.
      ## overloading operator + cho một class.
      ## ví dụ cách sử dụng module : MathFunctions, Taggable, Persistence là 3 module khác nhau chứa 3 class khác nhau mà class Thing muốn thừa kế.
      class Thing
        include MathFunctions
        include Taggable
        include Persistence
      end
  =end
    # public method cho phép bất cứ ai có thể gọi tới nó.
    # protected method : Gần giống private tuy nhiên nó khác với private ở chỗ protected có thể gọi tường minh
    bằng self.
    # private method chỉ cho phép gọi bên trong nội bộ class. Không thể gọi private method từ bên ngoài, không thể gọi một cách tường minh, dù đó là self.



