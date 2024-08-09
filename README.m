%% |minmax.m|: Returns minimum and maximum across matrix elements
% Author: Kelly Kearney
%
% This repository includes the code for the |[minmax.m]| Matlab
% function, along with all dependent functions required to run it.  
%
% This is a simple utility that returns the minimum and maximum value of an
% array across all dimensions.  It also allows for options to provide
% bounds centered on zero, to exclude outliers, and to expand beyond the
% limits by a fraction of the range.I find this utility very helpful to
% provide more nuanced control over axis/color limits in plots beyond the
% defaults, especially when coordinating limits across numerous subplots. 
%
%% Getting started
%
% *Prerequisites*
%
% This function should run in any version of Matlab.  Note that it does
% conflict with a function of the same name that is part of the Deep
% Learning Toolbox (both functions can coexist but users should be aware of
% potential shadowing if this toolbox is installed).
%
% *Downloading and installation*
%
% This code can be downloaded from <https://github.com/kakearney/minmax-pkg/ Github>
%
% *Matlab Search Path*
%
% The following folders need to be added to your Matlab Search path (via
% |addpath|, |pathtool|, etc.):
%
%   minmax-pkg/minmax

%% Syntax
%
%  [minval maxval] = minmax(a)
%  lims = minmax(a);
%  lims = minmax(a, type);
%  lims = minmax(a, type, w);
%
%% Description
%
% |[minval, maxval] = minmax(a)| 
% |lims = minmax(a)| returns the minimum |minval| and maximum
% |maxval| across all dimensions of array |a|, ignoring NaNs.  If only one
% output is provided, these values will be returned in a 1 x 2 vector
% |lims|.
%
% |[...] = minmax(a, 'noout') |
% |[...] = minmax(a, 'noout', w)| discards outliers, defined as a point that
% is more than |w| beyond the interquartile range (as in to boxplot
% outlier calculation).  By default, |w| is 1.5.
%
% |[...] = minmax(a, 'center')| returns the minimum and maximim centered on
% 0, i.e. |[-1 1]*max(abs(minmax(a)))|.
%
% |[...] = minmax(a, 'center')| returns centered bounds after first
% discarding outliers.
%
% |[...] = minmax(a, 'expand')|
% |[...] = minmax(a, 'expand', w)| returns bounds expanded by |w| times the
% total range.  By default |w| is 0.1.


%% Contributions
%
% Community contributions to this package are welcome!
% 
% To report bugs, please submit
% <https://github.com/kakearney/example-pkg/issues an issue> on GitHub and
% include:  
% 
% * your operating system
% * your version of Matlab and all relevant toolboxes (type |ver| at the Matlab command line to get this info)  
% * code/data to reproduce the error or buggy behavior, and the full text of any error messages received 
% 
% Please also feel free to submit enhancement requests, or to send pull
% requests (via GitHub) for bug fixes or new features. 
% 
% I do monitor the MatlabCentral FileExchange entry for any issues raised
% in the comments, but would prefer to track issues on GitHub. 
% 

