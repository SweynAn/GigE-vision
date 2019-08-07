function [] = GigeVisionTest( )
imaqreset; % reset the camera
% imaqhwinfo('gige'); % get the camera info
%imaqsupport

% Command that detects the camera
gigecamlist

% create object g
% could be access through serial number or ip address
% here use Basler camera with serial '21503355'
%g = gigecam('21503355');


% Acquire snapshot from the single camera
% Acquire video from camera

imaqhwinfo('gige')
vid = videoinput('gige',1);
%src = getselectedsource(vid);
preview(vid)
end



