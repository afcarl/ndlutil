function D = sparseDiag(d)

% SPARSEDIAG Create a diagonal matrix that is sparse from a vector.

% NDLUTIL

if length(size(d)) ~=2
  error('Input must be a vector.');
end
if size(d, 1) ~= 1 & size(d, 2) ~=1
  error('Input must be a vector.');
end

D = spdiags(d, 0, length(d), length(d));
% % Can be made more efficient.
% n = length(d);
% D = spalloc(n, n, n);
% for i = 1:n
%   D(i, i) = d(i);
% end