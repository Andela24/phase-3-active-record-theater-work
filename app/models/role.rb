class Roles < ActiveRecord::Base
has_many :auditions

def actors

    actor_names = []

        self.auditions.each do | each_audition |

            actor_names << each_audition.actor
end

return actor_names

def locations
   actor_locations = []

   self.auditions.each do | each_audition|

    actor_locations << each_audition.location

end

return actor_locations

def lead
array_result = self.auditions.filter do |that_audition_instance|
    that_audition_instance.hired == true
end

    if(array_result.size !=0 && array_result.size > 0)

        return array_result.first

    else
        return 'no actor has been hired for this role'

    end

end

def understudy

    array_result_of_filter = self.auditions.filter do |that_audition_instance|
        that_audition_instance.hired == true

    end

    if(array_result_of_filter.size !=0 && array_result_of_filter.size > 1)

    return array_result_of_filter.second

    else
     return 'no actor has been hired for understudy for this role'

    end
end
end