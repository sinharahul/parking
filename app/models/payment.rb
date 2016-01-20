require 'net/http'
require 'uri'
class Payment < ActiveRecord::Base
  attr_accessor :cardNumber, :cardCVV, :cardExpiryMonth, :cardExpiryYear
      
    attr_accessible :responseMessage, :amount, :amountReceived, :cardNumberMask,
    :cardType, :cardTypeCode, :responseCode, :transactionID, :xref, :cardNumber,
    :cardCVV, :cardExpiryMonth, :cardExpiryYear
end
