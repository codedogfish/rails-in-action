module SQL
    class Connection
        def Open
            puts "open sql connection"
        end
    end
end
module Oracle
    class Connection
        def Open
            puts "open oracle connection"
        end
    end
end
sql=SQL::Connection.new
sql.Open
oracle=Oracle::Connection.new
oracle.Open
