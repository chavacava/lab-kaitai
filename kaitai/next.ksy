meta:
  id: next
  title: NEXT compressed file
  file-extension: nxt
  ks-version: 0.8
  endian: le
seq:
  - id: magic
    contents: [137, 78, 69, 88, 84, 13, 10, 26, 10]
  - id: version
    type: u1
  - id: data_offset
    type: u2
  - id: root_byte
    type: u1
  - id: original_lenght
    type: u8
  - id: records_count
    type: u1
  - id: checksum
    type: u1
  - id: records
    type: record_data
    repeat: expr
    repeat-expr: records_count
types:
  record_data:
    seq:
      - id: type
        type: u1
      - id: from
        type: u1
      - id: to
        type: u1
    