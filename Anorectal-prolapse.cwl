cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  anorectal-prolapse-colon---primary:
    run: anorectal-prolapse-colon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  anorectal-prolapse-fixation---primary:
    run: anorectal-prolapse-fixation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-colon---primary/output
  anorectal-prolapse-proctopexy---primary:
    run: anorectal-prolapse-proctopexy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-fixation---primary/output
  anorectal-prolapse---primary:
    run: anorectal-prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-proctopexy---primary/output
  anorectal-prolapse-repair---primary:
    run: anorectal-prolapse-repair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse---primary/output
  anorectal-prolapse-sponge---primary:
    run: anorectal-prolapse-sponge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-repair---primary/output
  anorectal-prolapse-specified---primary:
    run: anorectal-prolapse-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-sponge---primary/output
  abdominal-anorectal-prolapse---primary:
    run: abdominal-anorectal-prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-specified---primary/output
  anorectal-prolapse-reduction---primary:
    run: anorectal-prolapse-reduction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: abdominal-anorectal-prolapse---primary/output
  perineal-anorectal-prolapse---primary:
    run: perineal-anorectal-prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-reduction---primary/output
  anorectal-prolapse-rectum---primary:
    run: anorectal-prolapse-rectum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: perineal-anorectal-prolapse---primary/output
  anorectal-prolapse-excision---primary:
    run: anorectal-prolapse-excision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-rectum---primary/output
  prolapse---primary:
    run: prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-excision---primary/output
  anorectal-prolapse-proctoptosis---primary:
    run: anorectal-prolapse-proctoptosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: prolapse---primary/output
  partial-anorectal-prolapse---primary:
    run: partial-anorectal-prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-proctoptosis---primary/output
  anorectal-prolapse-procedure---primary:
    run: anorectal-prolapse-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: partial-anorectal-prolapse---primary/output
  anorectal-prolapse---secondary:
    run: anorectal-prolapse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-procedure---primary/output
  abdominal-anorectal-prolapse---secondary:
    run: abdominal-anorectal-prolapse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse---secondary/output
  anorectal-prolapse-muscle---secondary:
    run: anorectal-prolapse-muscle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: abdominal-anorectal-prolapse---secondary/output
  anorectal-prolapse-unspecified---secondary:
    run: anorectal-prolapse-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-muscle---secondary/output
  perineal-anorectal-prolapse---secondary:
    run: perineal-anorectal-prolapse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-unspecified---secondary/output
  perianal-anorectal-prolapse---secondary:
    run: perianal-anorectal-prolapse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: perineal-anorectal-prolapse---secondary/output
  anorectal-prolapse-insertion---secondary:
    run: anorectal-prolapse-insertion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: perianal-anorectal-prolapse---secondary/output
  anorectal-prolapse-rectum---secondary:
    run: anorectal-prolapse-rectum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-insertion---secondary/output
  anorectal-prolapse-repair---secondary:
    run: anorectal-prolapse-repair---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-rectum---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: anorectal-prolapse-repair---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
