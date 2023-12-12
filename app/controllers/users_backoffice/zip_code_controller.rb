class UsersBackoffice::ZipCodeController < UsersBackofficeController
  def show
    puts "\n\n\n\nparams[:zip_code]: #{params}\n\n\n\n"
    @cep = CEP.new(params[:zip_code])
  end
end
