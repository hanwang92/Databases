SELECT bookingid
FROM booking JOIN traveler ON (traveler.travelerid = booking.travelerid) JOIN hotel ON ((hotel.hotelname = booking.hotelname)AND(hotel.hotelcity = booking.hotelcity))
WHERE hometown = 'Irene' AND chain = 'ccc'
