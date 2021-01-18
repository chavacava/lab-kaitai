meta:
  id: tc
  title: Telecommand packet structure
  ks-version: 0.1
seq:
  - id: header
    type: tc_pkt_header
  - id: data
    size: header.pkt_length + 1
  - id: pec 
    type: b16
types:
  tc_pkt_header:
    seq:
      - id: version
        -orig-id: version_number
        type: b3
      - id: type
        type: b1
      - id: data_field_header_flag
        type: b1
      - id: appid
        type: b11
      - id: seq_flags
        type: b2
      - id: seq_count
        type: b14
      - id: pkt_length
        type: b16