meta:
  id: full
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
# OK
  - id: records
    type: record_data
    repeat: expr
    repeat-expr: records_count
types:
  record_data:
    seq:
      - id: record_type
        type: b8
      - id: from
        type: b8
      - id: to
        type:
          switch-on: record_type
          cases:
            0: b8
            1: huffman_node
  huffman_node:
    seq:
      - id: node_type
        type: b1
      - id: node
        type:
          switch-on: node_type
          cases:
            false: internal
            true: leaf
  internal:
    seq:
      - id: left
        type: huffman_node
      - id: right
        type: huffman_node
  leaf:
    seq:
      - id: symbol
        type: b8