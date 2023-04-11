% Rule for national schools
national_school(Marks) :-
    Marks >= 400.

% Rule for extra county schools
extra_county_school(Marks) :-
    Marks >= 350,
    Marks < 400.

% Rule for county schools
county_school(Marks) :-
    Marks >= 300,
    Marks < 350.

% Rule for district schools
district_school(Marks) :-
    Marks < 300.

% Rule to determine school category based on total marks
determine_school_category(English, Kiswahili, Science, Mathematics, SocialStudies, Category) :-
    TotalMarks is English + Kiswahili + Science + Mathematics + SocialStudies,
    (
        national_school(TotalMarks) -> Category = 'National School';
        extra_county_school(TotalMarks) -> Category = 'Extra County School';
        county_school(TotalMarks) -> Category = 'County School';
        district_school(TotalMarks) -> Category = 'District School'
    ).
