%%%%%%%%%%%%%%%%%%%
% File: Draft
%%%%%%%%%%%%%%%%%%%
% to run: clingo System.lp competition.package/simpleInstances/inst1.asp -c tmax=13 0 -t4

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sort and object declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all restaurants have a chance to be a depot
{depot(A,P)} :- restaurant(A,P).
% distance between all restaurants and depots
%{dist(A, B, X)} :- restaurant(A,P1), depot(B,P2), X=|P1-P2|.
% each restaurant is associated with only 1 depot
1{dist(A, B, X): depot(B,P2), X=|P1-P2|}1 :- restaurant(A,P1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% effect and preconditions of action
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% number of depots is constrained
N{depot(A,P): restaurant(A,P)}N :- number_depots(N).
% optimal set of depots
#minimize{X, A, B: dist(A, B, X)}.

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