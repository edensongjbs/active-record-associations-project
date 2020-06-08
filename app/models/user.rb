class User < ActiveRecord::Base
    has_many :checkouts
    has_many :books, through: :checkouts
    def checkout_book(this_book)
        this_checkout=Checkout.create(book: this_book, user: self, returned: false)
        self.checkouts << this_checkout
        this_checkout
    end
    def return_book(this_book)
        this_checkout=Checkout.find_by(book: this_book, user: self)
        if this_checkout !=nil
            this_checkout.update_attribute(:returned, true)
        end
    end
end