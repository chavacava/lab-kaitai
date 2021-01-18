meta:
  id: tc_packet_data_field
  title: Telecommand packet data field
  ks-version: 0.1
seq:
  - id: header
    type: tc_pkt_data_header
  - id: data
    size-eos: true
types:
  tc_pkt_data_header:
    seq:
      - id: secondary_header_flag
        type: b1
      - id: pus_version_number
        type: b3
      - id: ack
        type: b4
      - id: service_type
        type: b8
      - id: service_subtype
        type: b8
      - id: source_id
        type: b1 # TODO: TBD
      - id: spare
        type: b # TODO TBD
    