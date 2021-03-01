# jhu-wb.equityschool.plus


## Checklist for modifying Qualtrics Survey

- [ ] Update the survey in qualtrics but do not publish the survey
- [ ] Update the Web Service action as needed.
  - [ ] If adding questions, make sure to use the "recode" outputs
  - [ ] If adding/modifying a matrix question, make sure all rows of the matrix have elements
  - [ ] ensure new questions also include a static element set to the qualtrics question ID (QIDxx)
- [ ] Update the printable version of the survey:
  - [ ] Re-export the survey as a Word doc. Use these options:
    - [x] Show Question Numbers
    - [x] Show Logic
      - [x] Use Question Numbers
      - [ ] Use Recode Values
    - [x] Show Coded Values
    - [x] Strip HTML Tags from all Questions and Answers
    - [x] Condense Dropdown Choices
    - [ ] Show Survey Flow
    - [ ] Include Graphic
  - [ ] add a note to the top of the document with the text `*** PLEASE NOTE *** This document includes all questions in the survey. Some questions may not be shown to you online to reduce the time needed to complete it. `
  - [ ] change page margins to narrow (0.5 inches on all sides)
  - [ ] export to PDF (if you have the option, choose `best for printing`) and save it to `/assets/` in this repository. You may be prompted to confirm you wish to use the narrower margins.
  - [ ] make a copy of the latest version and name it `/assets/survey-current.pdf` (replacing a the previous version). This is the document which is linked in the website content.
  - [ ] commit and push the repository updates to github
- [ ] Publish the survey via Qualtrics