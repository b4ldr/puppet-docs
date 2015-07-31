#!/usr/bin/env ruby

require 'json'
require 'pp'

module VersionTables

  def self.table_from_header_and_array_of_body_rows(header_row, other_rows)
    html_table = <<EOT
<table>
  <thead>
    <tr>
      <th>#{header_row.join('</th> <th>')}</th>
    </tr>
  </thead>

  <tbody>
    <tr>#{other_rows.map {|row| "<td>" << row.join("</td> <td>") << "</td>"}.join("</tr>\n    <tr>")}</tr>
  </tbody>
</table>

EOT
    html_table
  end


  module PE
    def self.abbr_for_given_version(version, platforms)
      # an individual version w/ associated platforms
      '<abbr title="' << platforms.join(', ') << '">' <<
        version <<
      '</abbr>'
    end

    def self.all_abbrs_for_component(component, vers_to_platforms)
      # a cell of versions
      vers_to_platforms.sort {|x,y| y[0] <=> x[0]}.map {|pkg_ver, platforms|
        abbr_for_given_version(pkg_ver, platforms)
      }.join("<br>")
    end

    def self.make_table_body(list_of_components, historical_packages)
      historical_packages.map {|pe_version, version_info|
        component_versions = list_of_components.map {|component|
          if version_info[component]
            all_abbrs_for_component(component, version_info[component])
          else
            ""
          end
        }
        [pe_version].concat(component_versions)
      }
    end

  end

end




# First, Puppet Labs software.

# pl_header = ['PE Version'].concat(pl_software)
# pl_body = make_table_body(pl_software, historical_packages)
#
# # Then, third-party software.
#
# third_header = ['PE Version'].concat(third_party)
# third_body = make_table_body(third_party, historical_packages)
#
# # now make tables
#
# print "### Puppet Labs Software\n\n"
# print table_from_header_and_array_of_body_rows(pl_header, pl_body)
# print "### Third-Party Software\n\n"
# print table_from_header_and_array_of_body_rows(third_header, third_body)

# done
