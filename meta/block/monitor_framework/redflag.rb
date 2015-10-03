def event(name,&block)
    @events[name] = block
end

def setup(&block)
    @setups << block
end

Dir.glob('*events.rb').each do |file|
    # bad taste, top level instance varialbe = global variable
    @setups = []
    @events = {}
    load file
    @events.each_pair do |name,event|
        # build a clean room
        env = Object.new
        @setups.each do |setup|
            # here
            env.instance_eval &setup
        end
        # there
        puts "ALERT: #{name}" if env.instance_eval &event
        # here and there share scope by the env
    end
end

