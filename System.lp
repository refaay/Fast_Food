%%%%%%%%%%%%%%%%%%%
% File: Draft
%%%%%%%%%%%%%%%%%%%
% to run: clingo System.lp competition.package/simpleInstances/inst1.asp -c tmax=13 0 -t4

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sort and object declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all restaurants have a chance to be a depot
{depot(A,P)} :- restaurant(A,P).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% effect and preconditions of action
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% number of depots is constrained
N{depot(A,P): restaurant(A,P)}N :- number_depots(N).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% domain independent axioms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%=============================
% fluents are initially exogenous
%=============================

%=============================
% uniqueness and existence of value constraints
%=============================

%=============================
% actions are exogenous
%=============================

%=============================
% commonsense law of inertia
%=============================

% for output readability
#show depot/2.