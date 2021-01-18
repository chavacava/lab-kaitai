meta:
  id: pus_request_id
  title: PUS TM request identifier
  ks-version: 0.1
seq:
  - id: version
    -orig-id: version_number
    type: b3
  - id: type
    type: b1
  - id: secondary_header_flag
    type: b1
  - id: appid
    type: b11
  - id: seq_flags
    type: b2
  - id: seq_count
    type: b14

