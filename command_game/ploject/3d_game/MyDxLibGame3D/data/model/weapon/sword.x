xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 358;
 0.00000;9.36239;0.00000;,
 0.47023;9.36239;-0.64721;,
 0.00000;9.36239;-0.80000;,
 0.76085;9.36239;-0.24721;,
 0.76085;9.36239;0.24721;,
 0.47023;9.36239;0.64721;,
 0.00000;9.36239;0.80000;,
 -0.47023;9.36239;0.64721;,
 -0.76085;9.36239;0.24721;,
 -0.76085;9.36239;-0.24721;,
 -0.47023;9.36239;-0.64721;,
 0.48862;9.35467;-0.67253;,
 0.00000;9.35467;-0.83129;,
 0.79060;9.35467;-0.25688;,
 0.79060;9.35467;0.25688;,
 0.48862;9.35467;0.67253;,
 0.00000;9.35467;0.83129;,
 -0.48862;9.35467;0.67253;,
 -0.79060;9.35467;0.25688;,
 -0.79060;9.35467;-0.25688;,
 -0.48862;9.35467;-0.67253;,
 0.50655;9.33172;-0.69721;,
 0.00000;9.33172;-0.86180;,
 0.81962;9.33172;-0.26631;,
 0.81962;9.33172;0.26631;,
 0.50655;9.33172;0.69721;,
 0.00000;9.33172;0.86180;,
 -0.50655;9.33172;0.69721;,
 -0.81962;9.33172;0.26631;,
 -0.81962;9.33172;-0.26631;,
 -0.50655;9.33172;-0.69721;,
 0.52360;9.29408;-0.72067;,
 0.00000;9.29408;-0.89080;,
 0.84720;9.29408;-0.27527;,
 0.84720;9.29408;0.27527;,
 0.52360;9.29408;0.72067;,
 0.00000;9.29408;0.89080;,
 -0.52360;9.29408;0.72067;,
 -0.84720;9.29408;0.27527;,
 -0.84720;9.29408;-0.27527;,
 -0.52360;9.29408;-0.72067;,
 0.53933;9.24270;-0.74232;,
 0.00000;9.24270;-0.91756;,
 0.87265;9.24270;-0.28354;,
 0.87265;9.24270;0.28354;,
 0.53933;9.24270;0.74232;,
 0.00000;9.24270;0.91756;,
 -0.53933;9.24270;0.74232;,
 -0.87265;9.24270;0.28354;,
 -0.87265;9.24270;-0.28354;,
 -0.53933;9.24270;-0.74232;,
 0.55335;9.17883;-0.76163;,
 0.00000;9.17883;-0.94142;,
 0.89534;9.17883;-0.29091;,
 0.89534;9.17883;0.29091;,
 0.55335;9.17883;0.76163;,
 0.00000;9.17883;0.94142;,
 -0.55335;9.17883;0.76163;,
 -0.89534;9.17883;0.29091;,
 -0.89534;9.17883;-0.29091;,
 -0.55335;9.17883;-0.76163;,
 0.56533;9.10405;-0.77811;,
 0.00000;9.10405;-0.96180;,
 0.91473;9.10405;-0.29721;,
 0.91473;9.10405;0.29721;,
 0.56533;9.10405;0.77811;,
 0.00000;9.10405;0.96180;,
 -0.56533;9.10405;0.77811;,
 -0.91473;9.10405;0.29721;,
 -0.91473;9.10405;-0.29721;,
 -0.56533;9.10405;-0.77812;,
 0.57497;9.02020;-0.79138;,
 0.00000;9.02020;-0.97820;,
 0.93032;9.02020;-0.30228;,
 0.93032;9.02020;0.30228;,
 0.57497;9.02020;0.79138;,
 0.00000;9.02020;0.97820;,
 -0.57497;9.02020;0.79138;,
 -0.93032;9.02020;0.30228;,
 -0.93032;9.02020;-0.30228;,
 -0.57497;9.02020;-0.79138;,
 0.58203;8.92935;-0.80110;,
 0.00000;8.92935;-0.99021;,
 0.94175;8.92935;-0.30599;,
 0.94175;8.92935;0.30599;,
 0.58203;8.92935;0.80110;,
 0.00000;8.92935;0.99021;,
 -0.58203;8.92935;0.80110;,
 -0.94175;8.92935;0.30599;,
 -0.94175;8.92935;-0.30599;,
 -0.58203;8.92935;-0.80110;,
 0.58634;8.83372;-0.80702;,
 0.00000;8.83372;-0.99754;,
 0.94871;8.83372;-0.30826;,
 0.94871;8.83372;0.30826;,
 0.58634;8.83372;0.80702;,
 0.00000;8.83372;0.99754;,
 -0.58634;8.83372;0.80702;,
 -0.94871;8.83372;0.30826;,
 -0.94871;8.83372;-0.30826;,
 -0.58634;8.83372;-0.80702;,
 0.58778;8.73569;-0.80902;,
 0.00000;8.73569;-1.00000;,
 0.95106;8.73569;-0.30902;,
 0.95106;8.73569;0.30902;,
 0.58778;8.73569;0.80902;,
 0.00000;8.73569;1.00000;,
 -0.58778;8.73569;0.80902;,
 -0.95106;8.73569;0.30902;,
 -0.95106;8.73569;-0.30902;,
 -0.58778;8.73569;-0.80902;,
 0.58778;0.58862;-0.80902;,
 0.00000;0.58862;-1.00000;,
 0.95106;0.58862;-0.30902;,
 0.95106;0.58862;0.30902;,
 0.58778;0.58862;0.80902;,
 0.00000;0.58862;1.00000;,
 -0.58778;0.58862;0.80902;,
 -0.95106;0.58862;0.30902;,
 -0.95106;0.58862;-0.30902;,
 -0.58778;0.58862;-0.80902;,
 0.58634;0.49058;-0.80702;,
 0.00000;0.49058;-0.99754;,
 0.94871;0.49058;-0.30826;,
 0.94871;0.49058;0.30826;,
 0.58634;0.49058;0.80702;,
 0.00000;0.49058;0.99754;,
 -0.58634;0.49058;0.80702;,
 -0.94871;0.49058;0.30826;,
 -0.94871;0.49058;-0.30826;,
 -0.58634;0.49058;-0.80702;,
 0.58203;0.39496;-0.80110;,
 0.00000;0.39496;-0.99021;,
 0.94175;0.39496;-0.30599;,
 0.94175;0.39496;0.30599;,
 0.58203;0.39496;0.80110;,
 0.00000;0.39496;0.99021;,
 -0.58203;0.39496;0.80110;,
 -0.94175;0.39496;0.30599;,
 -0.94175;0.39496;-0.30599;,
 -0.58203;0.39496;-0.80110;,
 0.57497;0.30410;-0.79138;,
 0.00000;0.30410;-0.97820;,
 0.93032;0.30410;-0.30228;,
 0.93032;0.30410;0.30228;,
 0.57497;0.30410;0.79138;,
 0.00000;0.30410;0.97820;,
 -0.57497;0.30410;0.79138;,
 -0.93032;0.30410;0.30228;,
 -0.93032;0.30410;-0.30228;,
 -0.57497;0.30410;-0.79138;,
 0.56533;0.22026;-0.77811;,
 0.00000;0.22026;-0.96180;,
 0.91473;0.22026;-0.29721;,
 0.91473;0.22026;0.29721;,
 0.56533;0.22026;0.77811;,
 0.00000;0.22026;0.96180;,
 -0.56533;0.22026;0.77811;,
 -0.91473;0.22026;0.29721;,
 -0.91473;0.22026;-0.29721;,
 -0.56533;0.22026;-0.77812;,
 0.55335;0.14548;-0.76163;,
 0.00000;0.14548;-0.94142;,
 0.89534;0.14548;-0.29091;,
 0.89534;0.14548;0.29091;,
 0.55335;0.14548;0.76163;,
 0.00000;0.14548;0.94142;,
 -0.55335;0.14548;0.76163;,
 -0.89534;0.14548;0.29091;,
 -0.89534;0.14548;-0.29091;,
 -0.55335;0.14548;-0.76163;,
 0.53933;0.08161;-0.74232;,
 0.00000;0.08161;-0.91756;,
 0.87265;0.08161;-0.28354;,
 0.87265;0.08161;0.28354;,
 0.53933;0.08161;0.74232;,
 0.00000;0.08161;0.91756;,
 -0.53933;0.08161;0.74232;,
 -0.87265;0.08161;0.28354;,
 -0.87265;0.08161;-0.28354;,
 -0.53933;0.08161;-0.74232;,
 0.52360;0.03023;-0.72067;,
 0.00000;0.03023;-0.89080;,
 0.84720;0.03023;-0.27527;,
 0.84720;0.03023;0.27527;,
 0.52360;0.03023;0.72067;,
 0.00000;0.03023;0.89080;,
 -0.52360;0.03023;0.72067;,
 -0.84720;0.03023;0.27527;,
 -0.84720;0.03023;-0.27527;,
 -0.52360;0.03023;-0.72067;,
 0.50655;-0.00741;-0.69721;,
 0.00000;-0.00741;-0.86180;,
 0.81962;-0.00741;-0.26631;,
 0.81962;-0.00741;0.26631;,
 0.50655;-0.00741;0.69721;,
 -0.00000;-0.00741;0.86180;,
 -0.50655;-0.00741;0.69721;,
 -0.81962;-0.00741;0.26631;,
 -0.81962;-0.00741;-0.26631;,
 -0.50655;-0.00741;-0.69721;,
 0.48862;-0.03037;-0.67253;,
 0.00000;-0.03037;-0.83129;,
 0.79060;-0.03037;-0.25688;,
 0.79060;-0.03037;0.25688;,
 0.48862;-0.03037;0.67253;,
 -0.00000;-0.03037;0.83129;,
 -0.48862;-0.03037;0.67253;,
 -0.79060;-0.03037;0.25688;,
 -0.79060;-0.03037;-0.25688;,
 -0.48862;-0.03037;-0.67253;,
 0.47023;-0.03808;-0.64721;,
 0.00000;-0.03808;-0.80000;,
 0.76085;-0.03808;-0.24721;,
 0.76085;-0.03808;0.24721;,
 0.47023;-0.03808;0.64721;,
 -0.00000;-0.03808;0.80000;,
 -0.47023;-0.03808;0.64721;,
 -0.76085;-0.03808;0.24721;,
 -0.76085;-0.03808;-0.24721;,
 -0.47023;-0.03808;-0.64721;,
 0.00000;-0.03808;-0.00000;,
 -5.32819;10.70130;0.85000;,
 5.32819;10.70130;0.85000;,
 5.32819;10.70130;-0.85000;,
 -5.32819;10.70130;-0.85000;,
 -5.32819;10.50130;-1.05000;,
 5.32819;10.50130;-1.05000;,
 5.32819;8.90130;-1.05000;,
 -5.32819;8.90130;-1.05000;,
 -5.32819;8.70130;-0.85000;,
 5.32819;8.70130;-0.85000;,
 5.32819;8.70130;0.85000;,
 -5.32819;8.70130;0.85000;,
 -5.32819;8.90130;1.05000;,
 5.32819;8.90130;1.05000;,
 5.32819;10.50130;1.05000;,
 -5.32819;10.50130;1.05000;,
 5.70878;10.50130;0.85000;,
 5.70878;8.90130;0.85000;,
 5.70878;8.90130;-0.85000;,
 5.70878;10.50130;-0.85000;,
 -5.70878;8.90130;0.85000;,
 -5.70878;10.50130;0.85000;,
 -5.70878;10.50130;-0.85000;,
 -5.70878;8.90130;-0.85000;,
 5.32819;10.68608;-0.92654;,
 -5.32819;10.68608;-0.92654;,
 5.32819;10.64272;-0.99142;,
 -5.32819;10.64272;-0.99142;,
 5.32819;10.57784;-1.03478;,
 -5.32819;10.57784;-1.03478;,
 -5.32819;8.71652;-0.92654;,
 5.32819;8.71652;-0.92654;,
 -5.32819;8.75988;-0.99142;,
 5.32819;8.75988;-0.99142;,
 -5.32819;8.82476;-1.03478;,
 5.32819;8.82476;-1.03478;,
 -5.32819;10.68608;0.92654;,
 5.32819;10.68608;0.92654;,
 -5.32819;10.64272;0.99142;,
 5.32819;10.64272;0.99142;,
 -5.32819;10.57784;1.03478;,
 5.32819;10.57784;1.03478;,
 5.32819;8.71652;0.92654;,
 -5.32819;8.71652;0.92654;,
 5.32819;8.75988;0.99142;,
 -5.32819;8.75988;0.99142;,
 5.32819;8.82476;1.03478;,
 -5.32819;8.82476;1.03478;,
 5.47384;10.68608;0.85000;,
 5.47384;10.68608;-0.85000;,
 5.59731;10.64272;0.85000;,
 5.59731;10.64272;-0.85000;,
 5.67981;10.57784;0.85000;,
 5.67981;10.57784;-0.85000;,
 5.47384;8.71652;-0.85000;,
 5.47384;8.71652;0.85000;,
 5.59731;8.75988;-0.85000;,
 5.59731;8.75988;0.85000;,
 5.67981;8.82476;-0.85000;,
 5.67981;8.82476;0.85000;,
 -5.47384;10.68608;-0.85000;,
 -5.47384;10.68608;0.85000;,
 -5.59731;10.64272;-0.85000;,
 -5.59731;10.64272;0.85000;,
 -5.67981;10.57784;-0.85000;,
 -5.67981;10.57784;0.85000;,
 -5.47384;8.71652;0.85000;,
 -5.47384;8.71652;-0.85000;,
 -5.59731;8.75988;0.85000;,
 -5.59731;8.75988;-0.85000;,
 -5.67981;8.82476;0.85000;,
 -5.67981;8.82476;-0.85000;,
 5.47384;10.50130;-1.03478;,
 5.47384;8.90130;-1.03478;,
 5.59731;10.50130;-0.99142;,
 5.59731;8.90130;-0.99142;,
 5.67981;10.50130;-0.92654;,
 5.67981;8.90130;-0.92654;,
 5.47384;8.90130;1.03478;,
 5.47384;10.50130;1.03478;,
 5.59731;8.90130;0.99142;,
 5.59731;10.50130;0.99142;,
 5.67981;8.90130;0.92654;,
 5.67981;10.50130;0.92654;,
 -5.47384;8.90130;-1.03478;,
 -5.47384;10.50130;-1.03478;,
 -5.59731;8.90130;-0.99142;,
 -5.59731;10.50130;-0.99142;,
 -5.67981;8.90130;-0.92654;,
 -5.67981;10.50130;-0.92654;,
 -5.47384;10.50130;1.03478;,
 -5.47384;8.90130;1.03478;,
 -5.59731;10.50130;0.99142;,
 -5.59731;8.90130;0.99142;,
 -5.67981;10.50130;0.92654;,
 -5.67981;8.90130;0.92654;,
 5.51849;10.64272;-0.95000;,
 5.63270;10.57784;-0.94239;,
 5.50400;10.57784;-1.01002;,
 -5.51849;10.64272;-0.95000;,
 -5.63270;10.57784;-0.94239;,
 -5.50400;10.57784;-1.01002;,
 5.51849;8.75988;-0.95000;,
 5.63270;8.82476;-0.94239;,
 5.50400;8.82476;-1.01002;,
 5.51849;10.64272;0.95000;,
 5.63270;10.57784;0.94239;,
 5.50400;10.57784;1.01002;,
 -5.51849;8.75988;-0.95000;,
 -5.63270;8.82476;-0.94239;,
 -5.50400;8.82476;-1.01002;,
 5.51849;8.75988;0.95000;,
 5.63270;8.82476;0.94239;,
 5.50400;8.82476;1.01002;,
 -5.51849;10.64272;0.95000;,
 -5.63270;10.57784;0.94239;,
 -5.50400;10.57784;1.01002;,
 -5.51849;8.75988;0.95000;,
 -5.63270;8.82476;0.94239;,
 -5.50400;8.82476;1.01002;,
 0.00000;35.77472;-0.21413;,
 2.64473;35.77472;0.00000;,
 2.64473;10.53816;0.00000;,
 0.00000;10.53816;-0.21413;,
 0.00000;35.77472;0.21413;,
 0.00000;10.53816;0.21413;,
 -2.64473;35.77472;0.00000;,
 -2.64473;10.53816;0.00000;,
 0.00000;35.77472;0.00000;,
 0.00000;10.53816;0.00000;,
 0.00000;35.67592;-0.21413;,
 0.00000;41.31971;0.00000;,
 2.64473;35.67592;0.00000;,
 0.00000;35.67592;0.21413;,
 -2.64473;35.67592;0.00000;,
 0.00000;35.67592;0.00000;;
 
 432;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,7,6;,
 3;0,8,7;,
 3;0,9,8;,
 3;0,10,9;,
 3;0,2,10;,
 4;2,1,11,12;,
 4;1,3,13,11;,
 4;3,4,14,13;,
 4;4,5,15,14;,
 4;5,6,16,15;,
 4;6,7,17,16;,
 4;7,8,18,17;,
 4;8,9,19,18;,
 4;9,10,20,19;,
 4;10,2,12,20;,
 4;12,11,21,22;,
 4;11,13,23,21;,
 4;13,14,24,23;,
 4;14,15,25,24;,
 4;15,16,26,25;,
 4;16,17,27,26;,
 4;17,18,28,27;,
 4;18,19,29,28;,
 4;19,20,30,29;,
 4;20,12,22,30;,
 4;22,21,31,32;,
 4;21,23,33,31;,
 4;23,24,34,33;,
 4;24,25,35,34;,
 4;25,26,36,35;,
 4;26,27,37,36;,
 4;27,28,38,37;,
 4;28,29,39,38;,
 4;29,30,40,39;,
 4;30,22,32,40;,
 4;32,31,41,42;,
 4;31,33,43,41;,
 4;33,34,44,43;,
 4;34,35,45,44;,
 4;35,36,46,45;,
 4;36,37,47,46;,
 4;37,38,48,47;,
 4;38,39,49,48;,
 4;39,40,50,49;,
 4;40,32,42,50;,
 4;42,41,51,52;,
 4;41,43,53,51;,
 4;43,44,54,53;,
 4;44,45,55,54;,
 4;45,46,56,55;,
 4;46,47,57,56;,
 4;47,48,58,57;,
 4;48,49,59,58;,
 4;49,50,60,59;,
 4;50,42,52,60;,
 4;52,51,61,62;,
 4;51,53,63,61;,
 4;53,54,64,63;,
 4;54,55,65,64;,
 4;55,56,66,65;,
 4;56,57,67,66;,
 4;57,58,68,67;,
 4;58,59,69,68;,
 4;59,60,70,69;,
 4;60,52,62,70;,
 4;62,61,71,72;,
 4;61,63,73,71;,
 4;63,64,74,73;,
 4;64,65,75,74;,
 4;65,66,76,75;,
 4;66,67,77,76;,
 4;67,68,78,77;,
 4;68,69,79,78;,
 4;69,70,80,79;,
 4;70,62,72,80;,
 4;72,71,81,82;,
 4;71,73,83,81;,
 4;73,74,84,83;,
 4;74,75,85,84;,
 4;75,76,86,85;,
 4;76,77,87,86;,
 4;77,78,88,87;,
 4;78,79,89,88;,
 4;79,80,90,89;,
 4;80,72,82,90;,
 4;82,81,91,92;,
 4;81,83,93,91;,
 4;83,84,94,93;,
 4;84,85,95,94;,
 4;85,86,96,95;,
 4;86,87,97,96;,
 4;87,88,98,97;,
 4;88,89,99,98;,
 4;89,90,100,99;,
 4;90,82,92,100;,
 4;92,91,101,102;,
 4;91,93,103,101;,
 4;93,94,104,103;,
 4;94,95,105,104;,
 4;95,96,106,105;,
 4;96,97,107,106;,
 4;97,98,108,107;,
 4;98,99,109,108;,
 4;99,100,110,109;,
 4;100,92,102,110;,
 4;102,101,111,112;,
 4;101,103,113,111;,
 4;103,104,114,113;,
 4;104,105,115,114;,
 4;105,106,116,115;,
 4;106,107,117,116;,
 4;107,108,118,117;,
 4;108,109,119,118;,
 4;109,110,120,119;,
 4;110,102,112,120;,
 4;112,111,121,122;,
 4;111,113,123,121;,
 4;113,114,124,123;,
 4;114,115,125,124;,
 4;115,116,126,125;,
 4;116,117,127,126;,
 4;117,118,128,127;,
 4;118,119,129,128;,
 4;119,120,130,129;,
 4;120,112,122,130;,
 4;122,121,131,132;,
 4;121,123,133,131;,
 4;123,124,134,133;,
 4;124,125,135,134;,
 4;125,126,136,135;,
 4;126,127,137,136;,
 4;127,128,138,137;,
 4;128,129,139,138;,
 4;129,130,140,139;,
 4;130,122,132,140;,
 4;132,131,141,142;,
 4;131,133,143,141;,
 4;133,134,144,143;,
 4;134,135,145,144;,
 4;135,136,146,145;,
 4;136,137,147,146;,
 4;137,138,148,147;,
 4;138,139,149,148;,
 4;139,140,150,149;,
 4;140,132,142,150;,
 4;142,141,151,152;,
 4;141,143,153,151;,
 4;143,144,154,153;,
 4;144,145,155,154;,
 4;145,146,156,155;,
 4;146,147,157,156;,
 4;147,148,158,157;,
 4;148,149,159,158;,
 4;149,150,160,159;,
 4;150,142,152,160;,
 4;152,151,161,162;,
 4;151,153,163,161;,
 4;153,154,164,163;,
 4;154,155,165,164;,
 4;155,156,166,165;,
 4;156,157,167,166;,
 4;157,158,168,167;,
 4;158,159,169,168;,
 4;159,160,170,169;,
 4;160,152,162,170;,
 4;162,161,171,172;,
 4;161,163,173,171;,
 4;163,164,174,173;,
 4;164,165,175,174;,
 4;165,166,176,175;,
 4;166,167,177,176;,
 4;167,168,178,177;,
 4;168,169,179,178;,
 4;169,170,180,179;,
 4;170,162,172,180;,
 4;172,171,181,182;,
 4;171,173,183,181;,
 4;173,174,184,183;,
 4;174,175,185,184;,
 4;175,176,186,185;,
 4;176,177,187,186;,
 4;177,178,188,187;,
 4;178,179,189,188;,
 4;179,180,190,189;,
 4;180,172,182,190;,
 4;182,181,191,192;,
 4;181,183,193,191;,
 4;183,184,194,193;,
 4;184,185,195,194;,
 4;185,186,196,195;,
 4;186,187,197,196;,
 4;187,188,198,197;,
 4;188,189,199,198;,
 4;189,190,200,199;,
 4;190,182,192,200;,
 4;192,191,201,202;,
 4;191,193,203,201;,
 4;193,194,204,203;,
 4;194,195,205,204;,
 4;195,196,206,205;,
 4;196,197,207,206;,
 4;197,198,208,207;,
 4;198,199,209,208;,
 4;199,200,210,209;,
 4;200,192,202,210;,
 4;202,201,211,212;,
 4;201,203,213,211;,
 4;203,204,214,213;,
 4;204,205,215,214;,
 4;205,206,216,215;,
 4;206,207,217,216;,
 4;207,208,218,217;,
 4;208,209,219,218;,
 4;209,210,220,219;,
 4;210,202,212,220;,
 3;212,211,221;,
 3;211,213,221;,
 3;213,214,221;,
 3;214,215,221;,
 3;215,216,221;,
 3;216,217,221;,
 3;217,218,221;,
 3;218,219,221;,
 3;219,220,221;,
 3;220,212,221;,
 4;222,223,224,225;,
 4;226,227,228,229;,
 4;230,231,232,233;,
 4;234,235,236,237;,
 4;238,239,240,241;,
 4;242,243,244,245;,
 4;225,224,246,247;,
 4;247,246,248,249;,
 4;249,248,250,251;,
 4;251,250,227,226;,
 4;252,253,231,230;,
 4;254,255,253,252;,
 4;256,257,255,254;,
 4;229,228,257,256;,
 4;258,259,223,222;,
 4;260,261,259,258;,
 4;262,263,261,260;,
 4;237,236,263,262;,
 4;233,232,264,265;,
 4;265,264,266,267;,
 4;267,266,268,269;,
 4;269,268,235,234;,
 4;224,223,270,271;,
 4;271,270,272,273;,
 4;273,272,274,275;,
 4;275,274,238,241;,
 4;232,231,276,277;,
 4;277,276,278,279;,
 4;279,278,280,281;,
 4;281,280,240,239;,
 4;222,225,282,283;,
 4;283,282,284,285;,
 4;285,284,286,287;,
 4;287,286,244,243;,
 4;230,233,288,289;,
 4;289,288,290,291;,
 4;291,290,292,293;,
 4;293,292,242,245;,
 4;228,227,294,295;,
 4;295,294,296,297;,
 4;297,296,298,299;,
 4;299,298,241,240;,
 4;236,235,300,301;,
 4;301,300,302,303;,
 4;303,302,304,305;,
 4;305,304,239,238;,
 4;226,229,306,307;,
 4;307,306,308,309;,
 4;309,308,310,311;,
 4;311,310,245,244;,
 4;234,237,312,313;,
 4;313,312,314,315;,
 4;315,314,316,317;,
 4;317,316,243,242;,
 3;224,271,246;,
 3;271,273,318;,
 3;318,246,271;,
 3;246,318,248;,
 3;273,275,319;,
 3;319,318,273;,
 3;318,319,320;,
 3;320,248,318;,
 3;248,320,250;,
 3;275,241,298;,
 3;298,319,275;,
 3;319,298,296;,
 3;296,320,319;,
 3;320,296,294;,
 3;294,250,320;,
 3;250,294,227;,
 3;247,282,225;,
 3;321,284,282;,
 3;282,247,321;,
 3;249,321,247;,
 3;322,286,284;,
 3;284,321,322;,
 3;323,322,321;,
 3;321,249,323;,
 3;251,323,249;,
 3;311,244,286;,
 3;286,322,311;,
 3;309,311,322;,
 3;322,323,309;,
 3;307,309,323;,
 3;323,251,307;,
 3;226,307,251;,
 3;253,276,231;,
 3;324,278,276;,
 3;276,253,324;,
 3;255,324,253;,
 3;325,280,278;,
 3;278,324,325;,
 3;326,325,324;,
 3;324,255,326;,
 3;257,326,255;,
 3;299,240,280;,
 3;280,325,299;,
 3;297,299,325;,
 3;325,326,297;,
 3;295,297,326;,
 3;326,257,295;,
 3;228,295,257;,
 3;259,270,223;,
 3;327,272,270;,
 3;270,259,327;,
 3;261,327,259;,
 3;328,274,272;,
 3;272,327,328;,
 3;329,328,327;,
 3;327,261,329;,
 3;263,329,261;,
 3;305,238,274;,
 3;274,328,305;,
 3;303,305,328;,
 3;328,329,303;,
 3;301,303,329;,
 3;329,263,301;,
 3;236,301,263;,
 3;230,289,252;,
 3;289,291,330;,
 3;330,252,289;,
 3;252,330,254;,
 3;291,293,331;,
 3;331,330,291;,
 3;330,331,332;,
 3;332,254,330;,
 3;254,332,256;,
 3;293,245,310;,
 3;310,331,293;,
 3;331,310,308;,
 3;308,332,331;,
 3;332,308,306;,
 3;306,256,332;,
 3;256,306,229;,
 3;232,277,264;,
 3;277,279,333;,
 3;333,264,277;,
 3;264,333,266;,
 3;279,281,334;,
 3;334,333,279;,
 3;333,334,335;,
 3;335,266,333;,
 3;266,335,268;,
 3;281,239,304;,
 3;304,334,281;,
 3;334,304,302;,
 3;302,335,334;,
 3;335,302,300;,
 3;300,268,335;,
 3;268,300,235;,
 3;222,283,258;,
 3;283,285,336;,
 3;336,258,283;,
 3;258,336,260;,
 3;285,287,337;,
 3;337,336,285;,
 3;336,337,338;,
 3;338,260,336;,
 3;260,338,262;,
 3;287,243,316;,
 3;316,337,287;,
 3;337,316,314;,
 3;314,338,337;,
 3;338,314,312;,
 3;312,262,338;,
 3;262,312,237;,
 3;265,288,233;,
 3;339,290,288;,
 3;288,265,339;,
 3;267,339,265;,
 3;340,292,290;,
 3;290,339,340;,
 3;341,340,339;,
 3;339,267,341;,
 3;269,341,267;,
 3;317,242,292;,
 3;292,340,317;,
 3;315,317,340;,
 3;340,341,315;,
 3;313,315,341;,
 3;341,269,313;,
 3;234,313,269;,
 4;342,343,344,345;,
 4;343,346,347,344;,
 4;346,348,349,347;,
 4;348,342,345,349;,
 3;350,343,342;,
 3;350,346,343;,
 3;350,348,346;,
 3;350,342,348;,
 3;351,345,344;,
 3;351,344,347;,
 3;351,347,349;,
 3;351,349,345;,
 3;352,353,354;,
 3;354,353,355;,
 3;355,353,356;,
 3;356,353,352;,
 3;357,352,354;,
 3;357,354,355;,
 3;357,355,356;,
 3;357,356,352;;
 
 MeshMaterialList {
  3;
  432;
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  1,
  1,
  1,
  1,
  2,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  1,
  2,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  1,
  2,
  2,
  2,
  2,
  0,
  0,
  0,
  0,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  0,
  0,
  0,
  0,
  2,
  2,
  2,
  2;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "gin.jpeg";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "kin.jpg";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshVertexColors {
  358;
  0;1.000000;1.000000;1.000000;1.000000;,
  1;1.000000;1.000000;1.000000;1.000000;,
  2;1.000000;1.000000;1.000000;1.000000;,
  3;1.000000;1.000000;1.000000;1.000000;,
  4;1.000000;1.000000;1.000000;1.000000;,
  5;1.000000;1.000000;1.000000;1.000000;,
  6;1.000000;1.000000;1.000000;1.000000;,
  7;1.000000;1.000000;1.000000;1.000000;,
  8;1.000000;1.000000;1.000000;1.000000;,
  9;1.000000;1.000000;1.000000;1.000000;,
  10;1.000000;1.000000;1.000000;1.000000;,
  11;1.000000;1.000000;1.000000;1.000000;,
  12;1.000000;1.000000;1.000000;1.000000;,
  13;1.000000;1.000000;1.000000;1.000000;,
  14;1.000000;1.000000;1.000000;1.000000;,
  15;1.000000;1.000000;1.000000;1.000000;,
  16;1.000000;1.000000;1.000000;1.000000;,
  17;1.000000;1.000000;1.000000;1.000000;,
  18;1.000000;1.000000;1.000000;1.000000;,
  19;1.000000;1.000000;1.000000;1.000000;,
  20;1.000000;1.000000;1.000000;1.000000;,
  21;1.000000;1.000000;1.000000;1.000000;,
  22;1.000000;1.000000;1.000000;1.000000;,
  23;1.000000;1.000000;1.000000;1.000000;,
  24;1.000000;1.000000;1.000000;1.000000;,
  25;1.000000;1.000000;1.000000;1.000000;,
  26;1.000000;1.000000;1.000000;1.000000;,
  27;1.000000;1.000000;1.000000;1.000000;,
  28;1.000000;1.000000;1.000000;1.000000;,
  29;1.000000;1.000000;1.000000;1.000000;,
  30;1.000000;1.000000;1.000000;1.000000;,
  31;1.000000;1.000000;1.000000;1.000000;,
  32;1.000000;1.000000;1.000000;1.000000;,
  33;1.000000;1.000000;1.000000;1.000000;,
  34;1.000000;1.000000;1.000000;1.000000;,
  35;1.000000;1.000000;1.000000;1.000000;,
  36;1.000000;1.000000;1.000000;1.000000;,
  37;1.000000;1.000000;1.000000;1.000000;,
  38;1.000000;1.000000;1.000000;1.000000;,
  39;1.000000;1.000000;1.000000;1.000000;,
  40;1.000000;1.000000;1.000000;1.000000;,
  41;1.000000;1.000000;1.000000;1.000000;,
  42;1.000000;1.000000;1.000000;1.000000;,
  43;1.000000;1.000000;1.000000;1.000000;,
  44;1.000000;1.000000;1.000000;1.000000;,
  45;1.000000;1.000000;1.000000;1.000000;,
  46;1.000000;1.000000;1.000000;1.000000;,
  47;1.000000;1.000000;1.000000;1.000000;,
  48;1.000000;1.000000;1.000000;1.000000;,
  49;1.000000;1.000000;1.000000;1.000000;,
  50;1.000000;1.000000;1.000000;1.000000;,
  51;1.000000;1.000000;1.000000;1.000000;,
  52;1.000000;1.000000;1.000000;1.000000;,
  53;1.000000;1.000000;1.000000;1.000000;,
  54;1.000000;1.000000;1.000000;1.000000;,
  55;1.000000;1.000000;1.000000;1.000000;,
  56;1.000000;1.000000;1.000000;1.000000;,
  57;1.000000;1.000000;1.000000;1.000000;,
  58;1.000000;1.000000;1.000000;1.000000;,
  59;1.000000;1.000000;1.000000;1.000000;,
  60;1.000000;1.000000;1.000000;1.000000;,
  61;1.000000;1.000000;1.000000;1.000000;,
  62;1.000000;1.000000;1.000000;1.000000;,
  63;1.000000;1.000000;1.000000;1.000000;,
  64;1.000000;1.000000;1.000000;1.000000;,
  65;1.000000;1.000000;1.000000;1.000000;,
  66;1.000000;1.000000;1.000000;1.000000;,
  67;1.000000;1.000000;1.000000;1.000000;,
  68;1.000000;1.000000;1.000000;1.000000;,
  69;1.000000;1.000000;1.000000;1.000000;,
  70;1.000000;1.000000;1.000000;1.000000;,
  71;1.000000;1.000000;1.000000;1.000000;,
  72;1.000000;1.000000;1.000000;1.000000;,
  73;1.000000;1.000000;1.000000;1.000000;,
  74;1.000000;1.000000;1.000000;1.000000;,
  75;1.000000;1.000000;1.000000;1.000000;,
  76;1.000000;1.000000;1.000000;1.000000;,
  77;1.000000;1.000000;1.000000;1.000000;,
  78;1.000000;1.000000;1.000000;1.000000;,
  79;1.000000;1.000000;1.000000;1.000000;,
  80;1.000000;1.000000;1.000000;1.000000;,
  81;1.000000;1.000000;1.000000;1.000000;,
  82;1.000000;1.000000;1.000000;1.000000;,
  83;1.000000;1.000000;1.000000;1.000000;,
  84;1.000000;1.000000;1.000000;1.000000;,
  85;1.000000;1.000000;1.000000;1.000000;,
  86;1.000000;1.000000;1.000000;1.000000;,
  87;1.000000;1.000000;1.000000;1.000000;,
  88;1.000000;1.000000;1.000000;1.000000;,
  89;1.000000;1.000000;1.000000;1.000000;,
  90;1.000000;1.000000;1.000000;1.000000;,
  91;1.000000;1.000000;1.000000;1.000000;,
  92;1.000000;1.000000;1.000000;1.000000;,
  93;1.000000;1.000000;1.000000;1.000000;,
  94;1.000000;1.000000;1.000000;1.000000;,
  95;1.000000;1.000000;1.000000;1.000000;,
  96;1.000000;1.000000;1.000000;1.000000;,
  97;1.000000;1.000000;1.000000;1.000000;,
  98;1.000000;1.000000;1.000000;1.000000;,
  99;1.000000;1.000000;1.000000;1.000000;,
  100;1.000000;1.000000;1.000000;1.000000;,
  101;1.000000;1.000000;1.000000;1.000000;,
  102;1.000000;1.000000;1.000000;1.000000;,
  103;1.000000;1.000000;1.000000;1.000000;,
  104;1.000000;1.000000;1.000000;1.000000;,
  105;1.000000;1.000000;1.000000;1.000000;,
  106;1.000000;1.000000;1.000000;1.000000;,
  107;1.000000;1.000000;1.000000;1.000000;,
  108;1.000000;1.000000;1.000000;1.000000;,
  109;1.000000;1.000000;1.000000;1.000000;,
  110;1.000000;1.000000;1.000000;1.000000;,
  111;1.000000;1.000000;1.000000;1.000000;,
  112;1.000000;1.000000;1.000000;1.000000;,
  113;1.000000;1.000000;1.000000;1.000000;,
  114;1.000000;1.000000;1.000000;1.000000;,
  115;1.000000;1.000000;1.000000;1.000000;,
  116;1.000000;1.000000;1.000000;1.000000;,
  117;1.000000;1.000000;1.000000;1.000000;,
  118;1.000000;1.000000;1.000000;1.000000;,
  119;1.000000;1.000000;1.000000;1.000000;,
  120;1.000000;1.000000;1.000000;1.000000;,
  121;1.000000;1.000000;1.000000;1.000000;,
  122;1.000000;1.000000;1.000000;1.000000;,
  123;1.000000;1.000000;1.000000;1.000000;,
  124;1.000000;1.000000;1.000000;1.000000;,
  125;1.000000;1.000000;1.000000;1.000000;,
  126;1.000000;1.000000;1.000000;1.000000;,
  127;1.000000;1.000000;1.000000;1.000000;,
  128;1.000000;1.000000;1.000000;1.000000;,
  129;1.000000;1.000000;1.000000;1.000000;,
  130;1.000000;1.000000;1.000000;1.000000;,
  131;1.000000;1.000000;1.000000;1.000000;,
  132;1.000000;1.000000;1.000000;1.000000;,
  133;1.000000;1.000000;1.000000;1.000000;,
  134;1.000000;1.000000;1.000000;1.000000;,
  135;1.000000;1.000000;1.000000;1.000000;,
  136;1.000000;1.000000;1.000000;1.000000;,
  137;1.000000;1.000000;1.000000;1.000000;,
  138;1.000000;1.000000;1.000000;1.000000;,
  139;1.000000;1.000000;1.000000;1.000000;,
  140;1.000000;1.000000;1.000000;1.000000;,
  141;1.000000;1.000000;1.000000;1.000000;,
  142;1.000000;1.000000;1.000000;1.000000;,
  143;1.000000;1.000000;1.000000;1.000000;,
  144;1.000000;1.000000;1.000000;1.000000;,
  145;1.000000;1.000000;1.000000;1.000000;,
  146;1.000000;1.000000;1.000000;1.000000;,
  147;1.000000;1.000000;1.000000;1.000000;,
  148;1.000000;1.000000;1.000000;1.000000;,
  149;1.000000;1.000000;1.000000;1.000000;,
  150;1.000000;1.000000;1.000000;1.000000;,
  151;1.000000;1.000000;1.000000;1.000000;,
  152;1.000000;1.000000;1.000000;1.000000;,
  153;1.000000;1.000000;1.000000;1.000000;,
  154;1.000000;1.000000;1.000000;1.000000;,
  155;1.000000;1.000000;1.000000;1.000000;,
  156;1.000000;1.000000;1.000000;1.000000;,
  157;1.000000;1.000000;1.000000;1.000000;,
  158;1.000000;1.000000;1.000000;1.000000;,
  159;1.000000;1.000000;1.000000;1.000000;,
  160;1.000000;1.000000;1.000000;1.000000;,
  161;1.000000;1.000000;1.000000;1.000000;,
  162;1.000000;1.000000;1.000000;1.000000;,
  163;1.000000;1.000000;1.000000;1.000000;,
  164;1.000000;1.000000;1.000000;1.000000;,
  165;1.000000;1.000000;1.000000;1.000000;,
  166;1.000000;1.000000;1.000000;1.000000;,
  167;1.000000;1.000000;1.000000;1.000000;,
  168;1.000000;1.000000;1.000000;1.000000;,
  169;1.000000;1.000000;1.000000;1.000000;,
  170;1.000000;1.000000;1.000000;1.000000;,
  171;1.000000;1.000000;1.000000;1.000000;,
  172;1.000000;1.000000;1.000000;1.000000;,
  173;1.000000;1.000000;1.000000;1.000000;,
  174;1.000000;1.000000;1.000000;1.000000;,
  175;1.000000;1.000000;1.000000;1.000000;,
  176;1.000000;1.000000;1.000000;1.000000;,
  177;1.000000;1.000000;1.000000;1.000000;,
  178;1.000000;1.000000;1.000000;1.000000;,
  179;1.000000;1.000000;1.000000;1.000000;,
  180;1.000000;1.000000;1.000000;1.000000;,
  181;1.000000;1.000000;1.000000;1.000000;,
  182;1.000000;1.000000;1.000000;1.000000;,
  183;1.000000;1.000000;1.000000;1.000000;,
  184;1.000000;1.000000;1.000000;1.000000;,
  185;1.000000;1.000000;1.000000;1.000000;,
  186;1.000000;1.000000;1.000000;1.000000;,
  187;1.000000;1.000000;1.000000;1.000000;,
  188;1.000000;1.000000;1.000000;1.000000;,
  189;1.000000;1.000000;1.000000;1.000000;,
  190;1.000000;1.000000;1.000000;1.000000;,
  191;1.000000;1.000000;1.000000;1.000000;,
  192;1.000000;1.000000;1.000000;1.000000;,
  193;1.000000;1.000000;1.000000;1.000000;,
  194;1.000000;1.000000;1.000000;1.000000;,
  195;1.000000;1.000000;1.000000;1.000000;,
  196;1.000000;1.000000;1.000000;1.000000;,
  197;1.000000;1.000000;1.000000;1.000000;,
  198;1.000000;1.000000;1.000000;1.000000;,
  199;1.000000;1.000000;1.000000;1.000000;,
  200;1.000000;1.000000;1.000000;1.000000;,
  201;1.000000;1.000000;1.000000;1.000000;,
  202;1.000000;1.000000;1.000000;1.000000;,
  203;1.000000;1.000000;1.000000;1.000000;,
  204;1.000000;1.000000;1.000000;1.000000;,
  205;1.000000;1.000000;1.000000;1.000000;,
  206;1.000000;1.000000;1.000000;1.000000;,
  207;1.000000;1.000000;1.000000;1.000000;,
  208;1.000000;1.000000;1.000000;1.000000;,
  209;1.000000;1.000000;1.000000;1.000000;,
  210;1.000000;1.000000;1.000000;1.000000;,
  211;1.000000;1.000000;1.000000;1.000000;,
  212;1.000000;1.000000;1.000000;1.000000;,
  213;1.000000;1.000000;1.000000;1.000000;,
  214;1.000000;1.000000;1.000000;1.000000;,
  215;1.000000;1.000000;1.000000;1.000000;,
  216;1.000000;1.000000;1.000000;1.000000;,
  217;1.000000;1.000000;1.000000;1.000000;,
  218;1.000000;1.000000;1.000000;1.000000;,
  219;1.000000;1.000000;1.000000;1.000000;,
  220;1.000000;1.000000;1.000000;1.000000;,
  221;1.000000;1.000000;1.000000;1.000000;,
  222;1.000000;1.000000;1.000000;1.000000;,
  223;1.000000;1.000000;1.000000;1.000000;,
  224;1.000000;1.000000;1.000000;1.000000;,
  225;1.000000;1.000000;1.000000;1.000000;,
  226;1.000000;1.000000;1.000000;1.000000;,
  227;1.000000;1.000000;1.000000;1.000000;,
  228;1.000000;1.000000;1.000000;1.000000;,
  229;1.000000;1.000000;1.000000;1.000000;,
  230;1.000000;1.000000;1.000000;1.000000;,
  231;1.000000;1.000000;1.000000;1.000000;,
  232;1.000000;1.000000;1.000000;1.000000;,
  233;1.000000;1.000000;1.000000;1.000000;,
  234;1.000000;1.000000;1.000000;1.000000;,
  235;1.000000;1.000000;1.000000;1.000000;,
  236;1.000000;1.000000;1.000000;1.000000;,
  237;1.000000;1.000000;1.000000;1.000000;,
  238;1.000000;1.000000;1.000000;1.000000;,
  239;1.000000;1.000000;1.000000;1.000000;,
  240;1.000000;1.000000;1.000000;1.000000;,
  241;1.000000;1.000000;1.000000;1.000000;,
  242;1.000000;1.000000;1.000000;1.000000;,
  243;1.000000;1.000000;1.000000;1.000000;,
  244;1.000000;1.000000;1.000000;1.000000;,
  245;1.000000;1.000000;1.000000;1.000000;,
  246;1.000000;1.000000;1.000000;1.000000;,
  247;1.000000;1.000000;1.000000;1.000000;,
  248;1.000000;1.000000;1.000000;1.000000;,
  249;1.000000;1.000000;1.000000;1.000000;,
  250;1.000000;1.000000;1.000000;1.000000;,
  251;1.000000;1.000000;1.000000;1.000000;,
  252;1.000000;1.000000;1.000000;1.000000;,
  253;1.000000;1.000000;1.000000;1.000000;,
  254;1.000000;1.000000;1.000000;1.000000;,
  255;1.000000;1.000000;1.000000;1.000000;,
  256;1.000000;1.000000;1.000000;1.000000;,
  257;1.000000;1.000000;1.000000;1.000000;,
  258;1.000000;1.000000;1.000000;1.000000;,
  259;1.000000;1.000000;1.000000;1.000000;,
  260;1.000000;1.000000;1.000000;1.000000;,
  261;1.000000;1.000000;1.000000;1.000000;,
  262;1.000000;1.000000;1.000000;1.000000;,
  263;1.000000;1.000000;1.000000;1.000000;,
  264;1.000000;1.000000;1.000000;1.000000;,
  265;1.000000;1.000000;1.000000;1.000000;,
  266;1.000000;1.000000;1.000000;1.000000;,
  267;1.000000;1.000000;1.000000;1.000000;,
  268;1.000000;1.000000;1.000000;1.000000;,
  269;1.000000;1.000000;1.000000;1.000000;,
  270;1.000000;1.000000;1.000000;1.000000;,
  271;1.000000;1.000000;1.000000;1.000000;,
  272;1.000000;1.000000;1.000000;1.000000;,
  273;1.000000;1.000000;1.000000;1.000000;,
  274;1.000000;1.000000;1.000000;1.000000;,
  275;1.000000;1.000000;1.000000;1.000000;,
  276;1.000000;1.000000;1.000000;1.000000;,
  277;1.000000;1.000000;1.000000;1.000000;,
  278;1.000000;1.000000;1.000000;1.000000;,
  279;1.000000;1.000000;1.000000;1.000000;,
  280;1.000000;1.000000;1.000000;1.000000;,
  281;1.000000;1.000000;1.000000;1.000000;,
  282;1.000000;1.000000;1.000000;1.000000;,
  283;1.000000;1.000000;1.000000;1.000000;,
  284;1.000000;1.000000;1.000000;1.000000;,
  285;1.000000;1.000000;1.000000;1.000000;,
  286;1.000000;1.000000;1.000000;1.000000;,
  287;1.000000;1.000000;1.000000;1.000000;,
  288;1.000000;1.000000;1.000000;1.000000;,
  289;1.000000;1.000000;1.000000;1.000000;,
  290;1.000000;1.000000;1.000000;1.000000;,
  291;1.000000;1.000000;1.000000;1.000000;,
  292;1.000000;1.000000;1.000000;1.000000;,
  293;1.000000;1.000000;1.000000;1.000000;,
  294;1.000000;1.000000;1.000000;1.000000;,
  295;1.000000;1.000000;1.000000;1.000000;,
  296;1.000000;1.000000;1.000000;1.000000;,
  297;1.000000;1.000000;1.000000;1.000000;,
  298;1.000000;1.000000;1.000000;1.000000;,
  299;1.000000;1.000000;1.000000;1.000000;,
  300;1.000000;1.000000;1.000000;1.000000;,
  301;1.000000;1.000000;1.000000;1.000000;,
  302;1.000000;1.000000;1.000000;1.000000;,
  303;1.000000;1.000000;1.000000;1.000000;,
  304;1.000000;1.000000;1.000000;1.000000;,
  305;1.000000;1.000000;1.000000;1.000000;,
  306;1.000000;1.000000;1.000000;1.000000;,
  307;1.000000;1.000000;1.000000;1.000000;,
  308;1.000000;1.000000;1.000000;1.000000;,
  309;1.000000;1.000000;1.000000;1.000000;,
  310;1.000000;1.000000;1.000000;1.000000;,
  311;1.000000;1.000000;1.000000;1.000000;,
  312;1.000000;1.000000;1.000000;1.000000;,
  313;1.000000;1.000000;1.000000;1.000000;,
  314;1.000000;1.000000;1.000000;1.000000;,
  315;1.000000;1.000000;1.000000;1.000000;,
  316;1.000000;1.000000;1.000000;1.000000;,
  317;1.000000;1.000000;1.000000;1.000000;,
  318;1.000000;1.000000;1.000000;1.000000;,
  319;1.000000;1.000000;1.000000;1.000000;,
  320;1.000000;1.000000;1.000000;1.000000;,
  321;1.000000;1.000000;1.000000;1.000000;,
  322;1.000000;1.000000;1.000000;1.000000;,
  323;1.000000;1.000000;1.000000;1.000000;,
  324;1.000000;1.000000;1.000000;1.000000;,
  325;1.000000;1.000000;1.000000;1.000000;,
  326;1.000000;1.000000;1.000000;1.000000;,
  327;1.000000;1.000000;1.000000;1.000000;,
  328;1.000000;1.000000;1.000000;1.000000;,
  329;1.000000;1.000000;1.000000;1.000000;,
  330;1.000000;1.000000;1.000000;1.000000;,
  331;1.000000;1.000000;1.000000;1.000000;,
  332;1.000000;1.000000;1.000000;1.000000;,
  333;1.000000;1.000000;1.000000;1.000000;,
  334;1.000000;1.000000;1.000000;1.000000;,
  335;1.000000;1.000000;1.000000;1.000000;,
  336;1.000000;1.000000;1.000000;1.000000;,
  337;1.000000;1.000000;1.000000;1.000000;,
  338;1.000000;1.000000;1.000000;1.000000;,
  339;1.000000;1.000000;1.000000;1.000000;,
  340;1.000000;1.000000;1.000000;1.000000;,
  341;1.000000;1.000000;1.000000;1.000000;,
  342;1.000000;1.000000;1.000000;1.000000;,
  343;1.000000;1.000000;1.000000;1.000000;,
  344;1.000000;1.000000;1.000000;1.000000;,
  345;1.000000;1.000000;1.000000;1.000000;,
  346;1.000000;1.000000;1.000000;1.000000;,
  347;1.000000;1.000000;1.000000;1.000000;,
  348;1.000000;1.000000;1.000000;1.000000;,
  349;1.000000;1.000000;1.000000;1.000000;,
  350;1.000000;1.000000;1.000000;1.000000;,
  351;1.000000;1.000000;1.000000;1.000000;,
  352;1.000000;1.000000;1.000000;1.000000;,
  353;1.000000;1.000000;1.000000;1.000000;,
  354;1.000000;1.000000;1.000000;1.000000;,
  355;1.000000;1.000000;1.000000;1.000000;,
  356;1.000000;1.000000;1.000000;1.000000;,
  357;1.000000;1.000000;1.000000;1.000000;;
 }
}
