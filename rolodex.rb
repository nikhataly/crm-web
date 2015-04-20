class Rolodex
  attr_reader :contacts

  def initialize
    @contacts = []
    @next_id = 1000
  end

  def find(contact_id)
    @contacts.find {|contact| contact.id == contact_id }

  end

  def add_contact(contact)
    contact.id = @next_id
    @contacts << contact
    @next_id += 1
    contact
  end

  def remove_contact(contact)
    @contacts.delete(contact)
  end

end