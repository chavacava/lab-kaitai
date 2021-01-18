meta:
  id: pus_s11_ss5
  title: TC[11,5] delete time-based scheduled activities identified by request identifier
  ks-version: 0.1
seq:
  - id: num_request_ids
    type: u1 # TODO TBD
  - id: request_id
    type: request_id_type
    repeat: expr
    repeat-expr: num_request_ids
types:
  request_id_type:
    seq:
      - id: source_id
        type: u1 # TODO TBD
      - id: appid
        type: u1 # TODO TBD
      - id: seq_count
        type: u1 # TODO TBD
