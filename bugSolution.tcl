proc get_element {list index} {
  set list_length [llength $list]
  if {$index < 0 || $index >= $list_length} {
    return -code error "Index $index out of range for list of length $list_length"
  }
  return [lindex $list $index]
}

# Example usage
set mylist {a b c d}
puts [get_element $mylist 2]  ;# Output: c
puts [get_element $mylist 5]  ;# Error: Index 5 out of range for list of length 4