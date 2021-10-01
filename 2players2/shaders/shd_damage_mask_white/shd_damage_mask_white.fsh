/*#ifdef GL_ES
precision mediump float;
#endif*/
 
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
//uniform sampler2D u_texture;
 
void main() {
  vec3 alpha = vec3(0.6);
  vec3 white = vec3(1.0);
  vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
  texColor.rgb = (white - texColor.rgb) * alpha + texColor.rgb;
  gl_FragColor = v_vColour * texColor;
}

