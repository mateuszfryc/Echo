float alpha = InputLocation.a;
float radius = InputSize.r;
if (alpha == 0.0f || radius == 0.0f)
{
  return 0.0f;
}

float3 location = InputLocation.rgb;
float distance = length(WorldLocation - InputLocation.rgb);

if (distance == 0.0f)
{
return 0.0f;;
}
float mask = 1.0f - (distance / radius);

return mask * alpha;