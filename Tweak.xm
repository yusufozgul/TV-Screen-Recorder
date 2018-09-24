BOOL isCaptured;
%hook UIScreen
-(BOOL)isCaptured{
  return false;
}
%end
