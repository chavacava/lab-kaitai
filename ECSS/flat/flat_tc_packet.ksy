meta:
  id: flat_tc_packet
  title: A decoder of TC packets into an almost flat object
seq:
  - id: version_number
    type: b3
  - id: type
    type: b1
  - id: data_filed_header_flag
    type: b1
  - id: appid
    type: b11
  - id: sequence_flag
    type: b2
  - id: sequence_count
    type: b14
  - id: packet_length
    type: b16
  - id: packet_data_field
    type:
      switch-on: data_filed_header_flag
      cases:
        false: headerless_data_field
        true: header_and_data
  - id: packet_error_control
    type: b16
types:
  headerless_data_field:
    seq:
      - id: data
        size: _root.packet_length - 1
  header_and_data:
    seq:
      - id: secondary_header_flag
        type: b1
      - id: pus_packet_version
        type: b3
      - id: ack
        type: b4
      - id: service_type
        type: b8
      - id: service_subtype
        type: b8
      - id: source_id
        type: b8 # tailored
      - id: spare
        type: b0 # tailored
      - id: data
        # The size is _root.packet_length - 1 - headerSize 
        size: _root.packet_length - 5 # tailored
