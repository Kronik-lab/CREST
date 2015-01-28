%% Runs the command given by the string after substituting the given Qsheet
% in. Input: 
% command - the command to run. Will be parsed.
% Qsheet - will substitute 'xxQsheetxx' in the 'command' parameter.
function runExternalCommand(command, Qsheet)

% Substitute Qsheet in
command2eval  = regexprep(command, 'xxQsheetxx', num2str(Qsheet, 20));

% Run command
eval(command2eval);

end