meta:
  id: next
  title: NEXT compressed file
  file-extension: nxt
  ks-version: 0.8
  endian: be
seq:
  - id: magic
    contents: [137, 78, 69, 88, 84, 13, 10, 26, 10]
  - id: version
    type: u1
  - id: dataOffset
    type: u2
  - id: rootByte
    type: u1
  - id: originalLenght
    type: u8
  - id: transitionRecordsCount
    type: u1
  - id: checksum
    type: u1
    