DATASG SEGMENT
    FLD1B DB 'personal computer'
    FLD2B DB 32
    FLD3B DB 20H
    FLD4B DB 01011001B
    FLD5B DB 32654
    FLD6B DB 10 DUP(0)
    FLD7B DB 'PART1', 20
          DB 'PART2', 50
          DB 'PART3', 14
    FLD1W DW 0FFF0H
    FLD2W DW 01011001B
    FLD3W DW FLD7B
    FLD4W DW 5, 6, 7, 8, 9
    FLD5W DW 5 DUP(0)
    FLD6W DW FLD1W-FLD1B
DARASG ENDS
                             
    