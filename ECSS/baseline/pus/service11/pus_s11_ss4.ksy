meta:
  id: pus_s11_ss4
  title: TC[11,4] insert activities into the time-based schedule
  ks-version: 0.1
  imports:
    - "../../packet/tc"
    - "../absolute_time"
seq:
  - id: sub_schedule_id
    type: u1 # TODO TBD
  - id: num_telecommands
    type: u1 # TODO TBD
  - id: scheduled_telecommand 
    type: scheduled_tc_type
    repeat: expr
    repeat-expr: num_telecommands
types:
  scheduled_tc_type:
    seq:
      - id: group_id
        type: u1 # TODO TBD
      - id: release_time
        type: absolute_time
      - id: request
        type: tc 
