N = 25;

persistent dtArray index
if isempty (dtArray)
  dtArray = [zeros(1,N) inf];
  index = 1;
end
dt= dtArray(index);
index = index + 1;
