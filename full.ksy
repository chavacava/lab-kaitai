meta:
  id: next
  title: NEXT compressed file
  file-extension: nxt
  ks-version: 0.8
  endian: le
  imports:
    - next_types
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
    size: 8
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
      - id: record_type
        type: u1
      - id: data
        type:
          switch-on: record_type
          cases:
            0: simple
            1: huffman_tree
  simple:
    seq:
      - id: from
        type: u1
      - id: to
        type: u1
  leaf:
    seq:
      - id: symbol
        type: u1
  huffman_tree:
    seq:
      - id: node_type
        type: b1
      - id: node
        type:
          switch-on: node_type
          cases:
            false: huffman_tree
            true: leaf
