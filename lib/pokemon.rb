class Pokemon

  attr_accessor :id,:name,:db,:type
  @@all=Array.new
  def initialize(id:,name:,type:,db:)
    @name=name
    @id=id
    @type=type
    @db=db
  end

  def self.save(id,name,type,connect_db)
    if @@all.size<=id
      connect_db.execute("INSERT INTO pokemon(id,name,type) VALUES (?,?,?)",id,name,type)
    end
  end



end
