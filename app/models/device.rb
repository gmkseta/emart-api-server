class Device < ApplicationRecord
    before_save :generate_device_num, only: [:create]
    
    private

        def generate_device_num
            self.device_num = SecureRandom.hex(6).upcase if new_record?
        end

end
