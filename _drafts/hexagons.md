---
layout: post
title: Hexagons
---

First, are we even WebGL? WebGL seems the brittlest!

```glsl
void main() {
  vec2 uv = gl_FragCoord.xy / resolution;
  fragColor = vec4(uv.x, uv.y, 0.5 + sin(uv.x * 100.0), 1.0);
}
```

Now try some hexagons:

```glsl
const vec2 s = vec2(1, sqrt(3.0));
const float borderThickness = .005;

float calcHexDistance(vec2 p) {
  p = abs(p);
  return max(dot(p, s * .5), p.x);
}

vec4 calcHexInfo(vec2 uv) {
  vec4 hexCenter = round(vec4(uv, uv - vec2(.5, 1.)) / s.xyxy);
  vec4 offset = vec4(uv - hexCenter.xy * s, uv - (hexCenter.zw + .5) * s);
  return dot(offset.xy, offset.xy) < dot(offset.zw, offset.zw)
    ? vec4(offset.xy, hexCenter.xy)
    : vec4(offset.zw, hexCenter.zw);
}

void main() {
  vec2 uv = 4. * gl_FragCoord.xy / resolution.y;
  vec4 hexInfo = calcHexInfo(uv);
  float totalDist = calcHexDistance(hexInfo.xy) + borderThickness;
  fragColor = (smoothstep(.45, .5, totalDist)) * vec4(.7, .9, .0, 3.);
}
```


<script>
// Ah, WebGL bad, very bad!
// It all state and mutation and global variables...
//
// They can't get the naming/numbering make any sense whatsoever:
// WebGL 1.0 is based on OpenGL ES 2.0, which uses GLSL ES 1.00
// WebGL 2.0 is based on OpenGL ES 3.0, which uses GLSL ES 3.00

const vertices = new Float32Array([
  -1, -1, 1, -1, -1, 1,
  -1, 1, 1, -1, 1, 1,
]);

const vsSource = `#version 300 es
precision mediump float;

in vec4 position;
out vec2 fragCoord;

void main() {
  gl_Position = position;
  fragCoord = position.xy;
}
`

function compileShader(gl, source, type) {
  const shader = gl.createShader(type);
  gl.shaderSource(shader, source);
  gl.compileShader(shader);
  if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
    console.error(gl.getShaderInfoLog(shader));
    gl.deleteShader(shader);
  }
  return shader;
}

function createProgram(gl, fsSource) {
  const program = gl.createProgram();
  gl.attachShader(program, compileShader(gl, vsSource, gl.VERTEX_SHADER));
  gl.attachShader(program, compileShader(gl, fsSource, gl.FRAGMENT_SHADER));
  gl.linkProgram(program);
  return program;
}

function draw(canvas, fsSource) {
  gl = canvas.getContext("webgl2");
  gl.viewport(0, 0, canvas.width, canvas.height);

  const program = createProgram(gl, fsSource);
  gl.useProgram(program);
  gl.uniform2f(gl.getUniformLocation(program, "resolution"), gl.canvas.width, gl.canvas.height);
  gl.drawArrays(gl.TRIANGLES, 0, 6);
  gl.useProgram(program);

  const buffer = gl.createBuffer();
  gl.bindBuffer(gl.ARRAY_BUFFER, buffer);
  gl.bufferData(gl.ARRAY_BUFFER, vertices, gl.STATIC_DRAW);

  const posLoc = gl.getAttribLocation(program, "position");
  gl.enableVertexAttribArray(posLoc);
  gl.vertexAttribPointer(posLoc, 2, gl.FLOAT, false, 0, 0);

  gl.drawArrays(gl.TRIANGLES, 0, 6);
}

function addCanvasesById(id) {
  document.querySelectorAll(`#${id} pre`).forEach(pre => {
    const p = document.createElement("p");
    const canvas = document.createElement("canvas");
    p.appendChild(canvas);
    pre.parentNode.parentNode.insertBefore(p, pre.parentNode.nextSibling);

    canvas.width = canvas.parentElement.clientWidth;
    canvas.height = canvas.parentElement.clientWidth / 2;
    fsSource = `#version 300 es
      precision mediump float;

      out vec4 fragColor;
      uniform vec2 resolution;
      ` + pre.textContent
    draw(canvas, fsSource);
  });
}

addCanvasesById("hexagons");
</script>
