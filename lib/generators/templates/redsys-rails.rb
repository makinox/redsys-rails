# config/initializers/redsys-rails.rb
# 
# Los siguientes valores son proporcionados por su entidad financiera.
# Se recomienda guardar la clave para la firma en el secrets.yml.
#
# => url: Url TPV
# => sha_256_key: clave para firma HMAC SHA256
# => merchant_code: código de comercio
# => merchant_terminal: código Terminal
# => merchant_transaction_type: tipo de transacción
# => merchant_currency: divisa (978: euro, 840: dólares, 826: libras, 392: yenes)
# => signature_version: versión firma HMAC SHA256
#

if Rails.env == 'production'
  Rails.configuration.redsys_rails = {
    url: ' https://sis-t.redsys.es:25443/canales/',
    sha_256_key: 'sq7HjrUOBfKmC576ILgskD5srU870gJ7',
    merchant_code: '346971864',
    merchant_terminal: '1',
    merchant_transaction_type: '',
    merchant_currency: '978',
    signature_version: 'HMAC_SHA256_V1'
  }
else
  Rails.configuration.redsys_rails = {
    url: ' https://sis-t.redsys.es:25443/canales/',
    sha_256_key: 'sq7HjrUOBfKmC576ILgskD5srU870gJ7',
    merchant_code: '346971864',
    merchant_terminal: '1',
    merchant_transaction_type: '',
    merchant_currency: '978',
    signature_version: 'HMAC_SHA256_V1'
  }
end