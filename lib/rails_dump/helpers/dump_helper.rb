module RailsDump  
  module Helpers
    module Dump
      @inited = false

      def dump(dump_var)    
        script = "<div id='ruby-dump'>#{dump_var.to_dump}</div>"    
        write_header(script) #if not @inited    
        return raw script    
      end

      private

      def write_header(script)

        script << '<style>

        table.ruby_dump {
          text-align: left;
          font-family: verdana, arial, helvetica, sans-serif; 
          color: #000000;
          font-size: xx-small;
        }
        table.ruby_dump td, table.ruby_dump th { padding: 3px; vertical-align: top; }

        /* Array */
        .array-table { background-color: #006600; }
        .array-table thead th { color: #fff; background-color: #009900; padding:5px; }
        .array-table tbody td { background-color: #ffffff; }
        .array-table tbody td.key { background-color: #ccffcc; }

        /* YAML */
        .yaml-table { background-color:#000066; }
        .yaml-table thead th { background-color:#FFFFFF; }
        .yaml-table tbody td { background-color:#000099; }
        .yaml-table tbody td.key { background-color:#CCCCFF; }

        </style>' 

        @inited = true    

      end
    end    
  end

end
