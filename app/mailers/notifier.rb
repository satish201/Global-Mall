class Notifier < ActionMailer::Base
  default :from => "satish@auxir.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.email_to_gm.subject
  #
  def email_to_gm(businesstype,businessname, city, state, streetaddress, zipcode, fullname,email,phonenumber,inside,outside,website,name, description, image, price, message, sent_at = Time.now)
    @greeting = "Hi"
    @businesstype = businesstype
    @businessname = businessname
    @city = city
    @state = state
    @streetaddress = streetaddress
    @zipcode = zipcode
    @fullname = fullname
    @email = email
    @phonenumber = phonenumber
    @inside = inside
    @outside = outside
    @website = website
    @name = name
    @description = description
    @image = image
    @price = price
    @message = message
    #@product = product
    attachments['image'] = image
   #img = image[:image]
   #attachments[img.original_filename] = File.read(img.path)
   #if files != nil
    #                        attachments[''+files.original_filename+''] = files.read
     #         end

    mail(:to => "zsatish201@gmail.com,amit@auxir.com,ol.johnleung@gmail.com", :subject => "Testing mail", :date => Time.now) do |format|
       format.html
       format.xml{}
    end
  end
  
  
end
