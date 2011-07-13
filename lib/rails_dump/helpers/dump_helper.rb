module RailsDump  
  module Helpers
    module Dump
      @inited = false

      def dump(dump_var, label="")
        script = "<div id='rails-dump'>#{dump_var.to_dump(label)}</div>"    
        write_header(script) #if not @inited    
        return raw script    
      end

      private

      def write_header(script)

        # script << '<style>
        # 
        # table.rails-dump {
        #   text-align: left;
        #   font-family: verdana, arial, helvetica, sans-serif; 
        #   color: #000000;
        #   font-size: xx-small;
        # }
        # table.rails-dump td, table.rails-dump th { padding: 3px; vertical-align: top; }
        # 
        # /* Array */
        # .array-table { background-color: #006600; }
        # .array-table thead th { color: #fff; background-color: #009900; padding:5px; }
        # .array-table tbody td { background-color: #ffffff; }
        # .array-table tbody td.key { background-color: #ccffcc; }
        # 
        # /* YAML */
        # .yaml-table { background-color:#000066; }
        # .yaml-table thead th { background-color:#FFFFFF; }
        # .yaml-table tbody td { background-color:#000099; }
        # .yaml-table tbody td.key { background-color:#CCCCFF; }
        # 
        # </style>' 

       script << '<style>
          #rails-dump {
            padding: 10px;
        		text-align: left;
        		font-family: verdana, arial, helvetica, sans-serif; 
        		font-size: 80%;
        		font-weight: bold;
          }
          
          div#rails-dump table { border-spacing: 0; border-collapse: separate }
          div#rails-dump table table { width: 100% !important; border-spacing: 0; border-collapse: separate }
        	div#rails-dump table thead th { padding: 5px; vertical-align: top; }
        	div#rails-dump table tbody td, div#rails-dump table tbody th { width: 20px !important; padding: 3px; vertical-align: top; }

        	table.array-table { border: 1px solid #006600 !important; }
        	table.array-table thead th.array-th { color: #ffffff; background-color: #009900 !important; padding:5px; border: 1px solid #006600 !important; }
        	table.array-table tbody td.array-td { background-color: #ffffff; border: 1px solid #006600 !important; }
        	table.array-table tbody th.array-key { background-color: #ccffcc !important; border: 1px solid #006600 !important; }

        	table.hash-table { border: 1px solid #0000CC !important; }	
        	table.hash-table thead th.hash-th { color: #fff; background-color: #4444CC !important; padding:5px; border: 1px solid #0000CC !important;}
        	table.hash-table tbody td.hash-td { background-color: #ffffff; border: 1px solid #0000CC !important;}
        	table.hash-table tbody th.hash-key { background-color: #CCDDFF !important; border: 1px solid #0000CC !important;}

        	table.object-table { border: 1px solid #FF0000 !important; }
        	table.object-table thead th.object-th { color: #fff; background-color: #FF4444 !important; padding:5px; border: 1px solid #FF0000 !important;}
        	table.object-table tbody td.object-td { background-color: #ffffff; border: 1px solid #FF0000 !important;}
        	table.object-table tbody th.object-key { background-color: #FF99AA !important; border: 1px solid #FF0000 !important;}						

        	table.method-table { width: 100% !important; border: 1px solid #AA4400 !important; }
        	table.method-table thead th.method-th { color: #fff; background-color: #CC6600 !important; padding:5px; border: 1px solid #AA4400 !important;}
        	table.method-table tbody td.method-td { background-color: #ffffff; border: 1px solid #AA4400 !important;}

        	table.arguments-table td.arguments { padding-left: 10px !important; font-style: italic !important; }
        </style>'

        @inited = true    

      end
    end    
  end

end
